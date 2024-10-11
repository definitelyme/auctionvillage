library util_repository.dart;

import 'package:auctionvillage/core/data/http_client/index.dart';
import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/core/data/repository/base_repo.dart';
import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/managers/managers.dart';
import 'package:auctionvillage/features/dashboard/data/remote/util_remote/util_remote.dart';
import 'package:injectable/injectable.dart';

@injectable
class UtilRepository with BaseRepository {
  final UtilRemote remote;

  UtilRepository(this.remote);

  Future<AppHttpResponse> contactSupport({
    String? name,
    String? email,
    required FeedbackType type,
    required String message,
    List<UploadableMedia> images = const [],
  }) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          final response = await remote.contactSupport(
            type: type.toName,
            message: message,
            name: name,
            email: email,
            images: images.where((i) => i.image.isValid).map((e) => e.image.getOrNull).toList(),
          );
          return AppHttpResponse.info(response.message, true);
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
      (f) => f,
    );
  }

  Future<AppHttpResponse> sendOTP(OTPType type) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          return remote.sendOTP(type.toString());
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
      (f) => f,
    );
  }
}
