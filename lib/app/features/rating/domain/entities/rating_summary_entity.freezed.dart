// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_summary_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RatingSummary {
  int? get total => throw _privateConstructorUsedError;
  List<int>? get count => throw _privateConstructorUsedError;
  int? get countWithContext => throw _privateConstructorUsedError;
  int? get countWithImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RatingSummaryCopyWith<RatingSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingSummaryCopyWith<$Res> {
  factory $RatingSummaryCopyWith(
          RatingSummary value, $Res Function(RatingSummary) then) =
      _$RatingSummaryCopyWithImpl<$Res, RatingSummary>;
  @useResult
  $Res call(
      {int? total,
      List<int>? count,
      int? countWithContext,
      int? countWithImage});
}

/// @nodoc
class _$RatingSummaryCopyWithImpl<$Res, $Val extends RatingSummary>
    implements $RatingSummaryCopyWith<$Res> {
  _$RatingSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? count = freezed,
    Object? countWithContext = freezed,
    Object? countWithImage = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      countWithContext: freezed == countWithContext
          ? _value.countWithContext
          : countWithContext // ignore: cast_nullable_to_non_nullable
              as int?,
      countWithImage: freezed == countWithImage
          ? _value.countWithImage
          : countWithImage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingSummaryImplCopyWith<$Res>
    implements $RatingSummaryCopyWith<$Res> {
  factory _$$RatingSummaryImplCopyWith(
          _$RatingSummaryImpl value, $Res Function(_$RatingSummaryImpl) then) =
      __$$RatingSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? total,
      List<int>? count,
      int? countWithContext,
      int? countWithImage});
}

/// @nodoc
class __$$RatingSummaryImplCopyWithImpl<$Res>
    extends _$RatingSummaryCopyWithImpl<$Res, _$RatingSummaryImpl>
    implements _$$RatingSummaryImplCopyWith<$Res> {
  __$$RatingSummaryImplCopyWithImpl(
      _$RatingSummaryImpl _value, $Res Function(_$RatingSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? count = freezed,
    Object? countWithContext = freezed,
    Object? countWithImage = freezed,
  }) {
    return _then(_$RatingSummaryImpl(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value._count
          : count // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      countWithContext: freezed == countWithContext
          ? _value.countWithContext
          : countWithContext // ignore: cast_nullable_to_non_nullable
              as int?,
      countWithImage: freezed == countWithImage
          ? _value.countWithImage
          : countWithImage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$RatingSummaryImpl extends _RatingSummary with DiagnosticableTreeMixin {
  const _$RatingSummaryImpl(
      {this.total,
      final List<int>? count,
      this.countWithContext,
      this.countWithImage})
      : _count = count,
        super._();

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
  final int? countWithContext;
  @override
  final int? countWithImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RatingSummary(total: $total, count: $count, countWithContext: $countWithContext, countWithImage: $countWithImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RatingSummary'))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('countWithContext', countWithContext))
      ..add(DiagnosticsProperty('countWithImage', countWithImage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingSummaryImpl &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._count, _count) &&
            (identical(other.countWithContext, countWithContext) ||
                other.countWithContext == countWithContext) &&
            (identical(other.countWithImage, countWithImage) ||
                other.countWithImage == countWithImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      total,
      const DeepCollectionEquality().hash(_count),
      countWithContext,
      countWithImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingSummaryImplCopyWith<_$RatingSummaryImpl> get copyWith =>
      __$$RatingSummaryImplCopyWithImpl<_$RatingSummaryImpl>(this, _$identity);
}

abstract class _RatingSummary extends RatingSummary {
  const factory _RatingSummary(
      {final int? total,
      final List<int>? count,
      final int? countWithContext,
      final int? countWithImage}) = _$RatingSummaryImpl;
  const _RatingSummary._() : super._();

  @override
  int? get total;
  @override
  List<int>? get count;
  @override
  int? get countWithContext;
  @override
  int? get countWithImage;
  @override
  @JsonKey(ignore: true)
  _$$RatingSummaryImplCopyWith<_$RatingSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
