library contact_support_screen.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/managers/managers.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kt_dart/collection.dart';

/// A stateless widget to render ContactSupportScreen.
class ContactSupportScreen extends StatelessWidget with AutoRouteWrapper {
  final FeedbackType? type;
  final String? fullName;
  final String? email;
  final String? message;
  final bool focusMessage;

  const ContactSupportScreen({
    Key? key,
    this.type,
    this.fullName,
    this.email,
    this.message,
    this.focusMessage = false,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<UtilCubit>()
        ..feedbackTypeChanged(type)
        ..nameChanged(fullName)
        ..emailChanged(email)
        ..supportMessageChanged(message),
      child: BlocListener<UtilCubit, UtilState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
        listener: (c, s) => s.status.fold(
          () {},
          (it) => it?.response.map(
            info: (i) => PopupDialog.info(
              message: i.message,
              duration: const Duration(seconds: 5),
              listener: (status) => status?.fold(
                dismissed: () {
                  if (i.pop) navigator.popUntil((r) => r.settings.name != ContactSupportRoute.name);
                },
              ),
            ).render(c),
            error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(c),
            success: (s) => PopupDialog.success(duration: const Duration(seconds: 3), message: s.message).render(c),
          ),
        ),
        child: this,
      ),
    );
  }

  void _pickImage(BuildContext ctx) async {
    await App.showAdaptiveBottomSheet(
      ctx,
      topRadius: Radius.zero,
      builder: (_) => DocumentPickerSheet(
        pickers: [
          DocumentPicker(
            name: 'Camera',
            asset: Utils.foldTheme(
              light: () => AppAssets.cameraColored,
              dark: () => AppAssets.cameraOutlined,
              context: ctx,
            ),
            onPressed: () => ctx.read<UtilCubit>().pickImage(ImageSource.camera),
          ),
          DocumentPicker(
            name: 'Gallery',
            asset: Utils.foldTheme(
              light: () => AppAssets.galleryColored,
              dark: () => AppAssets.galleryOutlined,
              context: ctx,
            ),
            onPressed: () => ctx.read<UtilCubit>().pickImage(ImageSource.gallery),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: const AdaptiveToolbar(implyLeading: true, title: 'Help & Support'),
      body: WidgetFocus(
        child: SingleChildScrollView(
          physics: Utils.physics,
          child: SafeArea(
            left: false,
            right: false,
            bottom: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Center(child: AppAssets.customerSupport),
                //
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: 0.01.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextFormInputLabel(
                        text: 'Ticket Type',
                        textColor: Palette.neutralLabel,
                        textColorDark: Palette.neutralLabelDark,
                        fontWeight: FontWeight.w600,
                      ),
                      //
                      0.007.verticalh,
                      //
                      BlocBuilder<UtilCubit, UtilState>(
                        builder: (c, s) => AdaptiveDropdown<FeedbackType?>(
                          hint: '-- Select --',
                          items: FeedbackType.values.toList(),
                          text: (s) => s?.value,
                          groupValue: s.feedbackType,
                          validate: s.validate,
                          pickerHeight: 0.25.h,
                          errorText: (type) => type == null ? 'Please select an option' : null,
                          onChanged: c.read<UtilCubit>().feedbackTypeChanged,
                        ),
                      ),
                      //
                      if (context.watch<AuthWatcherCubit>().isGuest) ...[
                        0.007.verticalh,
                        //
                        const TextFormInputLabel(text: 'Full Name'),
                        //
                        NameFormField<UtilCubit, UtilState>(
                          initial: (s) => s.displayName.getOrNull ?? fullName,
                          prefix: 'Full Name',
                          disabled: (s) => s.isLoading,
                          validate: (s) => s.validate,
                          field: (s) => s.displayName,
                          focus: UtilState.nameFocus,
                          next: UtilState.emailAddressFocus,
                          hintText: (s) => 'Your Name',
                          response: (s) => s.status,
                          onChanged: (it, str) => it.nameChanged(str),
                        ),
                        //
                        0.007.verticalh,
                      ],
                      //
                      if (context.watch<AuthWatcherCubit>().isGuest) ...[
                        const TextFormInputLabel(text: 'Email Address'),
                        //
                        EmailFormField<UtilCubit, UtilState>(
                          useHero: false,
                          initial: (s) => s.emailAddress.getOrNull ?? email,
                          hintText: (_) => 'you@email.com',
                          disabled: (s) => s.isLoading,
                          focus: UtilState.emailAddressFocus,
                          next: UtilState.supportMsgFocus,
                          field: (s) => s.emailAddress,
                          validate: (s) => context.watch<AuthWatcherCubit>().isGuest && s.validate,
                          response: (s) => s.status,
                          errorField: (error) => error.errors?.messages?.email,
                          onChanged: (cubit, it) => cubit.emailChanged(it),
                        ),
                        //
                        0.02.verticalh,
                      ],
                      //
                      if (context.watch<AuthWatcherCubit>().isAuthenticated) 0.02.verticalh,
                      const TextFormInputLabel(
                        text: 'Message',
                        textColor: Palette.neutralLabel,
                        textColorDark: Palette.neutralLabelDark,
                        fontWeight: FontWeight.w600,
                      ),
                      //
                      ReactiveTextFormField<UtilCubit, UtilState>(
                        minLines: 5,
                        autofocus: focusMessage,
                        initial: (s) => s.supportMessage.getOrNull ?? message,
                        hintText: (s) => 'Message',
                        disabled: (s) => s.isLoading,
                        keyboardType: TextInputType.multiline,
                        action: TextInputAction.newline,
                        capitalization: TextCapitalization.none,
                        focus: UtilState.supportMsgFocus,
                        field: (s) => s.supportMessage,
                        validate: (s) => s.validate,
                        response: (s) => s.status,
                        errorField: (error) => error.errors?.messages?.supportMessage,
                        onChanged: (cubit, it) => cubit.supportMessageChanged(it),
                      ),
                      //
                      0.014.verticalh,
                      //
                      TextFormInputLabel(
                        text: 'Upload Images (optional)',
                        fontSize: 15.sp,
                        style: const TextStyle(fontStyle: FontStyle.italic),
                      ),
                      //
                      BlocSelector<UtilCubit, UtilState, KtList<UploadableMedia>>(
                        selector: (s) => s.supportImages,
                        builder: (c, images) => Visibility(
                          // visible: !images.isEmpty(),
                          child: SizedBox(
                            height: 0.3.w,
                            child: ListView(
                              shrinkWrap: true,
                              physics: Utils.physics,
                              scrollDirection: Axis.horizontal,
                              controller: ScrollController(),
                              children: [
                                ...images
                                    .mapIndexedNotNull(
                                      (i, image) => Padding(
                                        padding: EdgeInsets.only(right: 0.03.w),
                                        child: ImageUploadWidget<UtilCubit, UtilState>(
                                          isLoading: (s) => s.isUploadingImage,
                                          showLoading: false,
                                          showCenterIcon: true,
                                          width: (s) => 0.3.w,
                                          indicatorColorLight: Palette.primary,
                                          indicatorColorDark: Colors.white,
                                          onCameraClicked: (cubit, source) => cubit.pickImage(source, i),
                                          onGalleryClicked: (cubit, source) => cubit.pickImage(source, i),
                                          onClosePressed: (cubit) => cubit.removeImage(i),
                                          onSelected: (s) => ImageBox.network(
                                            heroTag: 'hero-tag-selected-support-photo-$i-${image?.image.getOrNull}',
                                            photo: image?.image.getOrNull,
                                            width: 0.3.w,
                                            height: 0.3.w,
                                            expandsFullscreen: true,
                                            replacement: Center(
                                              child: CircularProgressBar(
                                                width: 25,
                                                height: 25,
                                                strokeWidth: 2,
                                                value: image?.progress?.progress,
                                                color: Palette.primary,
                                                colorDark: Colors.white70,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                    .asList(),
                                //
                                Center(
                                  child: Material(
                                    elevation: 0,
                                    color: App.resolveColor(Palette.fromHex('#EFF6FF'), dark: Colors.black87.withOpacity(0.4)),
                                    borderRadius: BorderRadius.circular(100),
                                    child: BlocSelector<UtilCubit, UtilState, bool>(
                                      selector: (s) => s.isLoading,
                                      builder: (c, isLoading) => AdaptiveInkWell(
                                        borderRadius: BorderRadius.circular(100),
                                        onTap: isLoading ? null : () => _pickImage(c),
                                        child: Padding(
                                          padding: const EdgeInsets.all(13),
                                          child: Icon(
                                            Icons.add,
                                            size: 30,
                                            color: App.resolveColor(Palette.primary, dark: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //
                      0.024.verticalh,
                      //
                      BlocBuilder<UtilCubit, UtilState>(
                        builder: (c, s) => AppButton(
                          text: 'Send',
                          isLoading: s.isLoading,
                          disabled: s.isLoading ||
                              s.isUploadingImage ||
                              s.supportImages.any((i) => i.progress == null || i.progress?.isDone == false),
                          onPressed: () => c.read<UtilCubit>().contactSupport(c.read<AuthWatcherCubit>().isGuest),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ).safeBottom,
          ),
        ),
      ),
    );
  }
}
