import 'package:hlshop/app/features/product/domain/entity/subcribe_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ms_subcribe_model.g.dart';

@JsonSerializable()
class MsSubcribeModel {
  final int? status;
  final bool? isSubscribed;
  final String? message;

  const MsSubcribeModel({
    this.status,
    this.isSubscribed,
    this.message,
  });

  factory MsSubcribeModel.fromJson(Map<String, dynamic> json) =>
      _$MsSubcribeModelFromJson(json);

  Map<String, dynamic> toJson() => _$MsSubcribeModelToJson(this);

  SubcribeEntity toEntity() {
    return SubcribeEntity(
      isSubscribed: isSubscribed,
    );
  }
}
