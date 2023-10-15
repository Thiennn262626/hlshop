import 'package:hlshop/all_file/all_file.dart';

part 'common_data.g.dart';

enum ItemStatus { initial, loading, success, error }

@JsonSerializable(ignoreUnannotated: false)
class RangeValueModel<T> {
  factory RangeValueModel.fromJson(Map<String, dynamic> json) =>
      _$RangeValueModelFromJson<T>(json);

//<editor-fold desc="Data Methods">

  const RangeValueModel({
    this.start,
    this.end,
  });

  factory RangeValueModel.fromMap(Map<String, dynamic> map) {
    return RangeValueModel(
      start: map['start'] as T,
      end: map['end'] as T,
    );
  }

  @_Converter()
  final T? start;
  @_Converter()
  final T? end;

  Map<String, dynamic> toJson() => _$RangeValueModelToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RangeValueModel &&
          runtimeType == other.runtimeType &&
          start == other.start &&
          end == other.end);

  @override
  int get hashCode => start.hashCode ^ end.hashCode;

  @override
  String toString() {
    return 'RangeValueModel{' + ' start: $start,' + ' end: $end,' + '}';
  }

  RangeValueModel copyWith({
    T? start,
    T? end,
  }) {
    return RangeValueModel(
      start: start ?? this.start,
      end: end ?? this.end,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'start': this.start,
      'end': this.end,
    };
  }

//</editor-fold>
}

class _Converter<T> implements JsonConverter<T, Object> {
  const _Converter();

  @override
  T fromJson(Object json) {
    return json as T;
  }

  @override
  Object toJson(T object) {
    // This will only work if `object` is a native JSON type:
    //   num, String, bool, null, etc
    // Or if it has a `toJson()` function`.
    return object as Object;
  }
}
