library about_post_page.dart;

import 'package:auctionvillage/features/dashboard/presentation/managers/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

/// A stateful widget to render AboutPostPage.
class AboutPostPage extends StatefulWidget {
  static const index = 0;
  const AboutPostPage({Key? key}) : super(key: key);

  @override
  _AboutPostPageState createState() => _AboutPostPageState();
}

class _AboutPostPageState extends State<AboutPostPage> with AutomaticKeepAliveClientMixin<AboutPostPage> {
  @override
  bool get wantKeepAlive => true;

  void _pickImage(BuildContext ctx, [bool isLoading = false]) async {
    if (!isLoading)
      await App.showAdaptiveBottomSheet(
        ctx,
        builder: (_) => DocumentPickerSheet(
          pickers: [
            DocumentPicker(
              name: 'Camera',
              asset: Utils.foldTheme(light: () => AppAssets.cameraColored, dark: () => AppAssets.cameraOutlined),
              onPressed: () => ctx.read<ProductBloc>().add(const ProductMediaEvents.pickCamera()),
            ),
            DocumentPicker(
              name: 'Gallery',
              asset: Utils.foldTheme(light: () => AppAssets.galleryColored, dark: () => AppAssets.galleryOutlined),
              onPressed: () => ctx.read<ProductBloc>().add(const ProductMediaEvents.pickGallery()),
            ),
          ],
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (c, s) => Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextFormInputLabel(text: 'Item Name'),
            //
            ReactiveTextFormField<ProductBloc, ProductState>(
              state: s,
              disabled: (s) => s.isLoading || s.isFetchingCategories || s.isSavingState || s.isCreatingProduct,
              keyboardType: TextInputType.text,
              focus: ProductState.itemNameFocus,
              next: ProductState.stateFocus,
              capitalization: TextCapitalization.words,
              controller: (s) => s.itemNameTextController,
              autoDisposeController: false,
              field: (s) => s.product.name,
              validate: (s) => s.validate,
              response: (s) => s.status,
              onChanged: (bloc, it) => bloc.add(const ProductSyncEvent.itemNameChanged()),
            ),
            //
            0.008.verticalh,
            //
            if (s.categories.isNotEmpty()) ...[
              const TextFormInputLabel(text: 'Item Category'),
              //
              AdaptiveDropdown<String?>(
                hint: '-- Select Category --',
                disabledHint: 'Retrieving categories...Please wait',
                disabled: s.isLoading || s.isFetchingCategories || s.isSavingState || s.isCreatingProduct,
                items: s.categories.map((p0) => p0.name.getOrNull).asList(),
                groupValue: s.product.category?.name.getOrNull,
                text: (category) => category,
                validate: s.validate,
                errorText: (category) => (category == null || s.product.category?.isValid == false) ? 'Please select a Category' : null,
                onChanged: (value) {
                  final _category = s.categories.find((e) => e.name.getOrEmpty == value);
                  c.read<ProductBloc>().add(ProductSyncEvent.categoryChanged(_category));
                },
              ),
            ],
            AnimatedVisibility(
              visible: s.isFetchingCategories && s.categories.isEmpty(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  0.02.verticalh,
                  //
                  AdaptiveText('Retrieving categories...Please wait', fontSize: 16.sp),
                  //
                  ClipRRect(
                    borderRadius: 100.br,
                    child: LinearProgressIndicator(
                      color: Palette.primary,
                      semanticsLabel: 'Fetching Categories',
                    ),
                  ),
                ],
              ),
            ),
            //
            0.012.verticalh,
            //
            const TextFormInputLabel(text: 'Tags'),
            //
            AutocompleteFormField<ProductBloc, ProductState>(
              state: s,
              maxLines: 1,
              controller: (s) => s.tagsEditingController,
              initial: (s) => s.product.tags.getOrNull?.asList(),
              hintText: (s) => 'Enter tags separated by comma(,) or space',
              disabled: (s) => s.isLoading || s.isFetchingCategories || s.isSavingState || s.isCreatingProduct,
              textInputType: TextInputType.text,
              focusNode: (_) => ProductState.tagsFocus,
              // field: (s) => s.product.tags,
              // validate: (s) => s.validate,
              // response: (s) => s.status,
              onChanged: (bloc, _) => bloc.add(const ProductDebounceEvent.onTypingTag()),
              onTagsChanged: (bloc, _) => bloc.add(const ProductSyncEvent.onTagSelected()),
            ),
            //
            0.014.verticalh,
            //
            const Align(
              alignment: Alignment.centerLeft,
              child: TextFormInputLabel(text: 'Upload Images of your product'),
            ),
            //
            BlocBuilder<ProductBloc, ProductState>(
              builder: (c, s) => SizedBox(
                height: 0.3.sw,
                child: ListView(
                  shrinkWrap: true,
                  physics: Utils.physics,
                  scrollDirection: Axis.horizontal,
                  controller: ScrollController(),
                  children: [
                    ...s.product.photos
                        .mapIndexedNotNull(
                          (i, media) => Padding(
                            padding: EdgeInsets.only(right: 0.03.sw),
                            child: ImageUploadWidget<ProductBloc, ProductState>(
                              state: s,
                              isLoading: (s) => s.isLoading,
                              showLoading: false,
                              showCenterIcon: true,
                              width: (s) => 0.3.sw,
                              onCameraClicked: (bloc, source) => bloc.add(ProductMediaEvents.pickCamera(i)),
                              onGalleryClicked: (bloc, source) => bloc.add(ProductMediaEvents.pickGallery(i)),
                              onClosePressed: (bloc) => bloc.add(ProductMediaEvents.removeMedia(i)),
                              indicatorColorLight: Palette.primary,
                              indicatorColorDark: Colors.white,
                              onSelected: (s) => ImageBox.network(
                                heroTag: 'hero-tag-selected-photo-$i-${media?.image.getOrNull}',
                                photo: media?.image.getOrNull,
                                width: 0.3.w,
                                height: 0.3.w,
                                expandsFullscreen: true,
                                replacement: Center(
                                  child: CircularProgressBar(
                                    width: 25,
                                    height: 25,
                                    strokeWidth: 2,
                                    value: media?.progress?.progress,
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
                        child: AdaptiveInkWell(
                          borderRadius: BorderRadius.circular(100),
                          onTap: () async => _pickImage(c, s.isLoading),
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
