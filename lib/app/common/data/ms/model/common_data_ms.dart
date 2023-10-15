import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/common/domain/entity/common_entity.dart';

part 'common_data_ms.g.dart';
part 'common_data_ms_convert.dart';

@JsonSerializable(genericArgumentFactories: true)
class MsPagingResult<T> {
  final List<T>? result;
  final int? total;

  const MsPagingResult({
    this.result,
    this.total,
  });

  factory MsPagingResult.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$MsPagingResultFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$MsPagingResultToJson(this, toJsonT);
}

@JsonSerializable()
class MsMedia {
  final String? mediaID;
  final String? linkString;
  final String? title;
  final String? description;
  final dynamic objectRefType;
  final int? mediaType;
  final String? objectRefID;

  const MsMedia({
    this.mediaID,
    this.linkString,
    this.title,
    this.description,
    this.objectRefType,
    this.mediaType,
    this.objectRefID,
  });

  factory MsMedia.fromJson(Map<String, dynamic> json) =>
      _$MsMediaFromJson(json);

  Map<String, dynamic> toJson() => _$MsMediaToJson(this);
}

@JsonSerializable()
class MsAppSetting {
  final int? maxHotProductsShowing;
  final String? version;

  const MsAppSetting({
    this.maxHotProductsShowing,
    this.version,
  });

  factory MsAppSetting.fromJson(Map<String, dynamic> json) =>
      _$MsAppSettingFromJson(json);

  Map<String, dynamic> toJson() => _$MsAppSettingToJson(this);
}
