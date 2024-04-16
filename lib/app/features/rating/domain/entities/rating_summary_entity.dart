import 'package:hlshop/all_file/all_file.dart';part 'rating_summary_entity.freezed.dart';@freezedclass RatingSummary with _$RatingSummary {  const RatingSummary._();  const factory RatingSummary({    double? average,    int? total,    List<int?>? count,    int? countWithContext,    int? countWithImage,  }) = _RatingSummary;}extension AverageExtension on RatingSummary? {  String? displayAverage() {    switch (this?.average) {      case 1.0:        return '1';      case 2.0:        return '2';      case 3.0:        return '3';      case 4.0:        return '4';      case 5.0:        return '5';      default:        return this?.average.toString();    }  }}