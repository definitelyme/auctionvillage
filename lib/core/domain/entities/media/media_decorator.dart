import 'package:auctionvillage/core/domain/entities/entities.dart';

abstract class MediaDecorator {
  const MediaDecorator();

  UniqueId<String?> get id;
  MediaField get url;
  MediaMimeType get mime;
  MediaField get streamUrl;
  DateTime? get stopShowingAt;
  DateTime? get createdAt;
  DateTime? get updatedAt;
}
