import 'package:hlshop/all_file/all_file.dart';part 'upload_image_model.g.dart';@JsonSerializable()class UploadImageModel {  const UploadImageModel({    this.message,    this.url,  });  final String? message;  final String? url;  factory UploadImageModel.fromJson(Map<String, dynamic> json) =>      _$UploadImageModelFromJson(json);  Map<String, dynamic> toJson() => _$UploadImageModelToJson(this);}extension UploadImageModelConverter on UploadImageModel {  ImageEntity toEntity() {    return ImageEntity(      src: url,    );  }}