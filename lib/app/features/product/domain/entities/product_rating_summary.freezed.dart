// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_rating_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductRatingSummary {
  int? get average => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  List<int>? get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductRatingSummaryCopyWith<ProductRatingSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductRatingSummaryCopyWith<$Res> {
  factory $ProductRatingSummaryCopyWith(ProductRatingSummary value,
          $Res Function(ProductRatingSummary) then) =
      _$ProductRatingSummaryCopyWithImpl<$Res, ProductRatingSummary>;
  @useResult
  $Res call({int? average, int? total, List<int>? count});
}

/// @nodoc
class _$ProductRatingSummaryCopyWithImpl<$Res,
        $Val extends ProductRatingSummary>
    implements $ProductRatingSummaryCopyWith<$Res> {
  _$ProductRatingSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? average = freezed,
    Object? total = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      average: freezed == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductRatingSummaryImplCopyWith<$Res>
    implements $ProductRatingSummaryCopyWith<$Res> {
  factory _$$ProductRatingSummaryImplCopyWith(_$ProductRatingSummaryImpl value,
          $Res Function(_$ProductRatingSummaryImpl) then) =
      __$$ProductRatingSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? average, int? total, List<int>? count});
}

/// @nodoc
class __$$ProductRatingSummaryImplCopyWithImpl<$Res>
    extends _$ProductRatingSummaryCopyWithImpl<$Res, _$ProductRatingSummaryImpl>
    implements _$$ProductRatingSummaryImplCopyWith<$Res> {
  __$$ProductRatingSummaryImplCopyWithImpl(_$ProductRatingSummaryImpl _value,
      $Res Function(_$ProductRatingSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? average = freezed,
    Object? total = freezed,
    Object? count = freezed,
  }) {
    return _then(_$ProductRatingSummaryImpl(
      average: freezed == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value._count
          : count // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

class _$ProductRatingSummaryImpl extends _ProductRatingSummary
    with DiagnosticableTreeMixin {
  const _$ProductRatingSummaryImpl(
      {this.average, this.total, final List<int>? count})
      : _count = count,
        super._();

  @override
  final int? average;
  @override
  final int? total;
  final List<int>? _count;
  @override
  List<int>? get count {
    final value = _count;
    if (value == null) return null;
    if (_count is EqualUnmodifiableListView) return _count;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductRatingSummary(average: $average, total: $total, count: $count)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductRatingSummary'))
      ..add(DiagnosticsProperty('average', average))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('count', count));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRatingSummaryImpl &&
            (identical(other.average, average) || other.average == average) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._count, _count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, average, total, const DeepCollectionEquality().hash(_count));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRatingSummaryImplCopyWith<_$ProductRatingSummaryImpl>
      get copyWith =>
          __$$ProductRatingSummaryImplCopyWithImpl<_$ProductRatingSummaryImpl>(
              this, _$identity);
}

abstract class _ProductRatingSummary extends ProductRatingSummary {
  const factory _ProductRatingSummary(
      {final int? average,
      final int? total,
      final List<int>? count}) = _$ProductRatingSummaryImpl;
  const _ProductRatingSummary._() : super._();

  @override
  int? get average;
  @override
  int? get total;
  @override
  List<int>? get count;
  @override
  @JsonKey(ignore: true)
  _$$ProductRatingSummaryImplCopyWith<_$ProductRatingSummaryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
