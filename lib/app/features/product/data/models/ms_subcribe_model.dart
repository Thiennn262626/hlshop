import 'package:hlshop/all_file/all_file.dart';

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
