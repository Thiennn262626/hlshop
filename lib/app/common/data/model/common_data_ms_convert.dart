part of 'common_data_ms.dart';

extension MediaMSMapper on MsMedia {
  ImageEntity toEntity() {
    return ImageEntity(
      object: this,
      id: mediaID.toString(),
      name: title,
      src: linkString,
      alt: description,
    );
  }
}
