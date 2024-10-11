library util_cubit.dart;

import 'dart:async';
import 'dart:io';

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/data/repositories/util_repository.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'util_cubit.freezed.dart';
part 'util_state.dart';

@injectable
class UtilCubit extends BaseCubit<UtilState> {
  final CloudinaryPublic _cloudinary;
  final ImagePicker _picker = ImagePicker();
  final UtilRepository _repository;

  UtilCubit(this._repository, this._cloudinary) : super(UtilState.initial());

  void contactSupport([bool? isGuest]) async {
    emit(state.copyWith(isLoading: true, validate: true, status: none()));

    if (isFeedbackValid(isGuest)) {
      final response = await _repository.contactSupport(
        name: state.displayName.getOrNull,
        email: state.emailAddress.getOrNull,
        type: state.feedbackType!,
        message: state.supportMessage.getOrEmpty!,
        images: state.supportImages.asList(),
      );

      emit(state.copyWith(status: optionOf(response), validate: response.isFailure));
    }

    toggleLoading(false);
  }

  void emailChanged(String? value) => emit(state.copyWith(emailAddress: EmailAddress(value)));

  void feedbackTypeChanged(FeedbackType? value) => emit(state.copyWith(feedbackType: value));

  bool isFeedbackValid([bool? isGuest]) {
    if (isGuest == true) return state.displayName.isValid && state.emailAddress.isValid;
    return state.supportMessage.isValid && state.feedbackType != null;
  }

  void nameChanged(String? value) => emit(state.copyWith(displayName: DisplayName(value)));

  void supportMessageChanged(String? value) => emit(state.copyWith(supportMessage: FeedbackBody(value)));

  void toggleLoading([bool? isLoading, Option<AppHttpResponse?>? status]) =>
      emit(state.copyWith(isLoading: isLoading ?? !state.isLoading, status: status ?? state.status));
}

extension ImagePickerX on UtilCubit {
  Future<File?> _attemptFileRetrieval(ImagePicker? picker) async {
    if (picker == null || App.platform.isIOS) return null;
    final _response = await _picker.retrieveLostData();
    if (!_response.isEmpty && _response.file != null) return File(_response.file!.path);
    return null;
  }

  Future<void> _uploadMedia(File file, {int? index}) async {
    try {
      final media = MediaField.network(null);
      final _id = UniqueId<String>.v4().value;

      if (index == null) {
        emit(state.copyWith(supportImages: state.supportImages.addMedia(media, id: _id)));
      } else {
        emit(state.copyWith(supportImages: state.supportImages.replaceMedia(media, id: _id, index: index)));
      }

      final conn = await connection();

      await conn.fold(
        () async {
          final _index = state.supportImages.indexOf(state.supportImages.first((e) => e.id == _id));

          final response = await _cloudinary.uploadFile(
            CloudinaryFile.fromFile(file.path, resourceType: CloudinaryResourceType.Image),
            uploadPreset: env.uploadPreset,
            onProgress: (count, total) {
              final replaced = state.supportImages.replaceMedia(media, index: _index, progress: SendProgressCallback(count, total));
              emit(state.copyWith(supportImages: replaced));
            },
          );

          final _uploaded = media.copyWith(response.secureUrl);

          emit(state.copyWith(supportImages: state.supportImages.replaceMedia(_uploaded, index: _index)));
        },
        (f) async => emit(state.copyWith(status: optionOf(f))),
      );
    } on CloudinaryException catch (e, tr) {
      emit(state.copyWith(status: optionOf(AppHttpResponse.failure('Error ${e.statusCode}: ${e.message ?? e.responseString}'))));
      unawaited(Utils.report(e, tr));
    } on NoSuchElementException catch (_) {
      return;
    }
  }

  void pickImage(ImageSource source, [int? index]) async {
    emit(state.copyWith(status: none(), isUploadingImage: true));

    try {
      final File? file;

      final _result = await _picker.pickImage(
        source: source,
        maxHeight: Const.maxImageUploadHeight,
        maxWidth: Const.maxImageUploadWidth,
        imageQuality: Const.imageQuality,
      );

      if (_result == null) {
        file = await _attemptFileRetrieval(_picker);
      } else {
        file = File(_result.path);
      }

      if (file != null) await _uploadMedia(file, index: index);
    } on MissingPluginException catch (e) {
      final msg = kDebugMode ? e.message : Const.missingPickerPluginTxt;
      emit(state.copyWith(status: some(AppHttpResponse.failure(msg))));
    } catch (e) {
      final msg = kDebugMode ? '$e' : 'An error occurred while trying to retrieve the photo.';
      emit(state.copyWith(status: some(AppHttpResponse.failure(msg))));
    }

    emit(state.copyWith(isUploadingImage: false));
  }

  void removeImage([int? index]) {
    var _index = index ?? state.supportImages.size - 1;
    emit(state.copyWith(supportImages: state.supportImages.minusElement(state.supportImages.elementAt(_index))));
  }
}
