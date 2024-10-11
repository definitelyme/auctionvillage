part of product_bloc.dart;

mixin _ImagePickerMixin on BaseSearchBloc<ProductEvent, ProductState> {
  final ImagePicker _picker = ImagePicker();

  void _pickCamera(_PickCameraEvent evt, Emitter<ProductState> emit) async {
    try {
      await _pickMedia(emit, ImageSource.camera, evt.index);
    } on MissingPluginException catch (e) {
      emit(state.copyWith(
        status: some(AppHttpResponse.failure(env.flavor.maybeWhen(orElse: () => 'Image upload failed!', dev: () => e.message))),
      ));
    } catch (e) {
      emit(state.copyWith(
        status: some(AppHttpResponse.failure(env.flavor.maybeWhen(orElse: () => 'Error: $e', dev: () => '$e'))),
      ));
    }
  }

  void _pickGallery(_PickGalleryEvent evt, Emitter<ProductState> emit) async {
    try {
      await _pickMedia(emit, ImageSource.gallery, evt.index);
    } on MissingPluginException catch (e) {
      emit(state.copyWith(
        status: some(AppHttpResponse.failure(env.flavor.maybeWhen(orElse: () => 'Image upload failed!', dev: () => e.message))),
      ));
    } catch (e) {
      emit(state.copyWith(
        status: some(AppHttpResponse.failure(env.flavor.maybeWhen(orElse: () => 'Error: $e', dev: () => '$e'))),
      ));
    }
  }

  void _removeMedia(_RemoveMediaEvent evt, Emitter<ProductState> emit) {
    final _index = evt.index ?? state.product.photos.size - 1;
    final _element = state.product.photos.getOrNull(_index);
    if (_element != null) emit(state.copyWith.product(photos: state.product.photos.minusElement(_element)));
  }

  Future<void> _pickMedia(Emitter<ProductState> emit, ImageSource source, [int? index]) async {
    File? file;
    String? fileName;
    var fileSize = 0;

    final _result = await _picker.pickImage(
      source: source,
      maxWidth: Const.maxImageUploadWidth,
      maxHeight: Const.maxImageUploadHeight,
      imageQuality: Const.imageQuality,
    );

    if (_result == null) {
      file = await _attemptFileRetrieval(_picker);
      if (file != null) {
        fileName = p.basenameWithoutExtension(file.path);
        fileSize = file.lengthSync();
      }
    } else {
      file = File(_result.path);
      fileName = p.basenameWithoutExtension(file.path);
      fileSize = file.lengthSync();
    }

    if (file != null) {
      if (fileSize > Const.maxImageUploadSize) {
        emit(state.copyWith(
          status: some(AppHttpResponse.failure('Max. upload size is ${Const.maxImageUploadSize.toMB.ceil()}MB\n'
              'Please reduce the size of $fileName and try again.')),
        ));
        return;
      }

      add(ProductMediaEvents.uploadMedia(file, index));
    }
  }

  Future<File?> _attemptFileRetrieval(ImagePicker? picker) async {
    if (picker == null || App.platform.isIOS) return null;

    final _response = await _picker.retrieveLostData();
    if (!_response.isEmpty && _response.file != null) return File(_response.file!.path);
    return null;
  }
}
