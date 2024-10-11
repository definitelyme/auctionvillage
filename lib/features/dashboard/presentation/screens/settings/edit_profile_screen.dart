library edit_profile_screen.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render EditProfileScreen.
class EditProfileScreen extends StatefulWidget with AutoRouteWrapper {
  const EditProfileScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>(),
      child: BlocListener<AuthCubit, AuthState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
        listener: (c, s) => s.status.fold(
          () {},
          (it) => it?.response.map(
            info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(c),
            error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(c),
            success: (s) => PopupDialog.success(message: s.message, show: s.message.isNotEmpty).render(c),
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late AuthCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = context.read<AuthCubit>();
    enqueue(() => _cubit.initProfileUpdate(context.read<AuthWatcherCubit>().user));
    // enqueue(_cubit.initPhoneUpdate);
  }

  @override
  Widget build(BuildContext context) {
    return AppSliverScrollView.scaffold(
      title: 'Basic Information',
      actions: [
        BlocBuilder<AuthCubit, AuthState>(
          builder: (c, s) => AnimatedVisibility(
            visible: s.user.email.getOrNull == null && s.isLoading,
            child: Padding(
              padding: const EdgeInsets.all(3).copyWith(right: App.sidePadding),
              child: Utils.circularLoader(color: Palette.primary, stroke: 2, height: 25, width: 25),
            ),
          ),
        ),
      ],
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: App.sidePadding, vertical: 0.02.h),
          sliver: SliverList(
            delegate: SliverChildListDelegate.fixed([
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox.square(
                  dimension: 0.2.w,
                  child: ImageUploadWidget<AuthCubit, AuthState>(
                    url: (s) => s.user.photo.image.getOrNull,
                    isLoading: (s) => s.isUploadingImage,
                    showLoading: false,
                    width: (s) => double.infinity,
                    showCenterIcon: true,
                    radius: 100,
                    onCameraClicked: (cubit, _) => cubit.pickCamera(),
                    onGalleryClicked: (cubit, _) => cubit.pickGallery(),
                    onSelected: (s) => ImageBox.network(
                      heroTag: Const.profilePhotoHeroTag,
                      photo: s.user.photo.image.getOrNull,
                      width: 0.2.w,
                      height: 0.2.w,
                      shapeBorder: const CircleBorder(side: BorderSide(color: Colors.white, width: 0.5)),
                      replacement: AnimatedVisibility(
                        visible: s.user.photo.progress?.progress != null || s.isUploadingImage,
                        // replacement: Image.asset(AssetsImagesDashboard.unnamedPNG, cacheHeight: 105, cacheWidth: 110),
                        replacement: Image.asset(AssetsImagesDashboard.unnamedPNG, cacheHeight: 208, cacheWidth: 216),
                        child: Center(
                          child: CircularProgressBar(
                            width: 25,
                            height: 25,
                            strokeWidth: 2,
                            value: s.user.photo.progress?.progress,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //
              0.03.verticalh,
              //
              AdaptiveText(
                'Your Profile avatar',
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
                textColor: Palette.onSurface100,
              ),
              //
              AdaptiveText(
                'File smaller than 10MB and atleast 30 x 30px ',
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                textColor: Palette.fromHex('#BABEC2'),
                textColorDark: Palette.onSurface60,
              ),
            ]),
          ),
        ),
        //
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
          sliver: SliverList(
            delegate: SliverChildListDelegate.fixed([
              // if (!App.platform.isIOS)
              const Align(
                alignment: Alignment.centerLeft,
                child: TextFormInputLabel(text: 'First Name', textColor: Colors.black87),
              ),
              //
              NameFormField<AuthCubit, AuthState>(
                initial: (s) => s.user.firstName.getOrEmpty,
                prefix: 'First Name',
                disabled: (s) => s.isLoading,
                validate: (s) => s.validate,
                field: (s) => s.user.firstName,
                response: (s) => s.status,
                errorField: (err) => err.errors?.messages?.firstName,
                focus: AuthState.firstNameFocus,
                next: AuthState.lastNameFocus,
                hintText: (s) => App.platform.cupertino('First Name'),
                onChanged: (it, str) => it.firstNameChanged(str),
              ),
              //
              0.01.verticalh,
              //
              // if (!App.platform.isIOS)
              const Align(
                alignment: Alignment.centerLeft,
                child: TextFormInputLabel(text: 'Last Name', textColor: Colors.black87),
              ),
              //
              NameFormField<AuthCubit, AuthState>(
                initial: (s) => s.user.lastName.getOrEmpty,
                prefix: 'Last Name',
                disabled: (s) => s.isLoading,
                validate: (s) => s.validate,
                field: (s) => s.user.lastName,
                response: (s) => s.status,
                errorField: (err) => err.errors?.messages?.lastName,
                focus: AuthState.lastNameFocus,
                next: AuthState.emailFocus,
                hintText: (s) => App.platform.cupertino('Surname'),
                onChanged: (it, str) => it.lastNameChanged(str),
              ),
              //
              0.01.verticalh,
              //
              // if (!App.platform.isIOS)
              const Align(
                alignment: Alignment.centerLeft,
                child: TextFormInputLabel(text: 'Account ID', textColor: Colors.black87),
              ),
              //
              ReactiveTextFormField<AuthCubit, AuthState>(
                initial: (s) => s.user.id.value,
                // disabled: (s) => true,
                readOnly: (_) => true,
                validate: (s) => false,
                field: (s) => s.user.email,
                hintText: (s) => App.platform.cupertino('Your Account ID'),
                suffixIcon: (s) => Disabled(
                  disabled: s.isLoading,
                  child: AdaptiveToolbar.adaptiveToolbarAction(
                    icon: Icons.copy,
                    iconSize: 20,
                    tooltip: 'Copy ID',
                    label: 'Copy ID',
                    size: const Size.square(40),
                    alignment: Alignment.center,
                    iconColor: App.resolveColor(Palette.primary, dark: Colors.white),
                    onPressed: () => ClipboardManager.copy('${s.user.id.value}'),
                  ),
                ),
              ),
              //
              0.01.verticalh,
              //
              const TextFormInputLabel(text: 'Country'),
              //
              BlocSelector<AuthWatcherCubit, AuthWatcherState, Country?>(
                selector: (s) => s.user?.country,
                builder: (c, current) => AdaptiveDropdown<Country?>(
                  hint: '-- Select Country --',
                  disabledHint: 'Retrieving countries...Please wait',
                  disabled: true,
                  items: Country.countries.asList(),
                  groupValue: current,
                  // validate: s.validate,
                  text: (it) => it?.name.getOrNull,
                  errorText: (it) => it == null ? 'Please select a Country' : null,
                  onChanged: (it) {},
                ),
              ),
              //
              0.01.verticalh,
              //
              // if (!App.platform.isIOS)
              const MyHero(
                tag: Const.emailLabelHeroTag,
                child: TextFormInputLabel(text: 'E-mail', textColor: Colors.black87),
              ),
              //
              EmailFormField<AuthCubit, AuthState>(
                initial: (s) => s.user.email.getOrEmpty,
                useHero: false,
                disabled: (s) => true,
                readOnly: (s) => true,
                validate: (s) => false,
                field: (s) => s.user.email,
                hintText: (s) => App.platform.cupertino('Your E-mail Address'),
              ),
              //
              0.01.verticalh,
              //
              // if (!App.platform.isIOS)
              const TextFormInputLabel(text: 'Phone Number', textColor: Colors.black87),
              //
              PhoneFormField<AuthCubit, AuthState>(
                // initial: (s) => s.user.phone.getOrEmpty,
                disabled: (s) => s.isLoading,
                validate: (s) => s.validate,
                field: (s) => s.user.phone,
                response: (s) => s.status,
                controller: (s) => s.phoneTextController,
                autoDisposeController: false,
                focus: AuthState.phoneFocus,
                next: AuthState.billingAddress,
                hintText: (s) => App.platform.cupertino('Your Phone Number'),
                initialCountryCode: (s) => s.user.country?.iso.getOrNull ?? s.user.phone.country?.iso.getOrNull,
                selectedCountry: (s) => s.user.country ?? s.user.phone.country,
                hideCountryPicker: (s) => s.user.country?.name.getOrNull == null && s.user.phone.country?.name.getOrNull == null,
                onCountryChanged: (cubit, country) => cubit.countryChanged(country),
                onChanged: (cubit, str) => cubit.phoneNumberChanged(str),
              ),
              //
              0.01.verticalh,
              //
              const Align(
                alignment: Alignment.centerLeft,
                child: TextFormInputLabel(text: 'Billing Address'),
              ),
              //
              ReactiveTextFormField<AuthCubit, AuthState>(
                minLines: 3,
                hintText: (s) => 'No 1, Jalan Sri Semantan, 50200 Kuala ...',
                disabled: (s) => s.isLoading,
                focus: AuthState.billingAddress,
                keyboardType: TextInputType.multiline,
                action: TextInputAction.newline,
                capitalization: TextCapitalization.none,
                field: (s) => s.user.billingAddress,
                response: (s) => s.status,
                onChanged: (cubit, it) => cubit.billingAddressChanged(it),
              ),
            ]),
          ),
        ),
        //
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
          sliver: SliverList(
            delegate: SliverChildListDelegate.fixed([
              0.04.verticalh,
              //
              BlocBuilder<AuthCubit, AuthState>(
                builder: (c, s) => AppButton(
                  text: 'Update Information',
                  isLoading: s.user.email.getOrNull != null && s.isLoading,
                  // disabled: !_cubit.isDirty,
                  disabled: s.isLoading,
                  onPressed: () => enqueue(_cubit.updateProfile),
                ),
              ),
              //
              0.02.verticalh.safeBottom,
            ]),
          ),
        ),
      ],
    );
  }
}
