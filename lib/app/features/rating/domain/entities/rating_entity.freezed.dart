// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RatingEntity {
  List<RatingItemEntity>? get ratingItems => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  RatingSummary? get ratingSummary => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RatingEntityCopyWith<RatingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingEntityCopyWith<$Res> {
  factory $RatingEntityCopyWith(
          RatingEntity value, $Res Function(RatingEntity) then) =
      _$RatingEntityCopyWithImpl<$Res, RatingEntity>;
  @useResult
  $Res call(
      {List<RatingItemEntity>? ratingItems,
      int? total,
      RatingSummary? ratingSummary});

  $RatingSummaryCopyWith<$Res>? get ratingSummary;
}

/// @nodoc
class _$RatingEntityCopyWithImpl<$Res, $Val extends RatingEntity>
    implements $RatingEntityCopyWith<$Res> {
  _$RatingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ratingItems = freezed,
    Object? total = freezed,
    Object? ratingSummary = freezed,
  }) {
    return _then(_value.copyWith(
      ratingItems: freezed == ratingItems
          ? _value.ratingItems
          : ratingItems // ignore: cast_nullable_to_non_nullable
              as List<RatingItemEntity>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingSummary: freezed == ratingSummary
          ? _value.ratingSummary
          : ratingSummary // ignore: cast_nullable_to_non_nullable
              as RatingSummary?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingSummaryCopyWith<$Res>? get ratingSummary {
    if (_value.ratingSummary == null) {
      return null;
    }

    return $RatingSummaryCopyWith<$Res>(_value.ratingSummary!, (value) {
      return _then(_value.copyWith(ratingSummary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RatingEntityImplCopyWith<$Res>
    implements $RatingEntityCopyWith<$Res> {
  factory _$$RatingEntityImplCopyWith(
          _$RatingEntityImpl value, $Res Function(_$RatingEntityImpl) then) =
      __$$RatingEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<RatingItemEntity>? ratingItems,
      int? total,
      RatingSummary? ratingSummary});

  @override
  $RatingSummaryCopyWith<$Res>? get ratingSummary;
}

/// @nodoc
class __$$RatingEntityImplCopyWithImpl<$Res>
    extends _$RatingEntityCopyWithImpl<$Res, _$RatingEntityImpl>
    implements _$$RatingEntityImplCopyWith<$Res> {
  __$$RatingEntityImplCopyWithImpl(
      _$RatingEntityImpl _value, $Res Function(_$RatingEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ratingItems = freezed,
    Object? total = freezed,
    Object? ratingSummary = freezed,
  }) {
    return _then(_$RatingEntityImpl(
      ratingItems: freezed == ratingItems
          ? _value._ratingItems
          : ratingItems // ignore: cast_nullable_to_non_nullable
              as List<RatingItemEntity>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingSummary: freezed == ratingSummary
          ? _value.ratingSummary
          : ratingSummary // ignore: cast_nullable_to_non_nullable
              as RatingSummary?,
    ));
  }
}

/// @nodoc

class _$RatingEntityImpl extends _RatingEntity with DiagnosticableTreeMixin {
  const _$RatingEntityImpl(
      {final List<RatingItemEntity>? ratingItems,
      this.total,
      this.ratingSummary})
      : _ratingItems = ratingItems,
        super._();

  final List<RatingItemEntity>? _ratingItems;
  @override
  List<RatingItemEntity>? get ratingItems {
    final value = _ratingItems;
    if (value == null) return null;
    if (_ratingItems is EqualUnmodifiableListView) return _ratingItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? total;
  @override
  final RatingSummary? ratingSummary;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RatingEntity(ratingItems: $ratingItems, total: $total, ratingSummary: $ratingSummary)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RatingEntity'))
      ..add(DiagnosticsProperty('ratingItems', ratingItems))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('ratingSummary', ratingSummary));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._ratingItems, _ratingItems) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.ratingSummary, ratingSummary) ||
                other.ratingSummary == ratingSummary));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_ratingItems), total, ratingSummary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingEntityImplCopyWith<_$RatingEntityImpl> get copyWith =>
      __$$RatingEntityImplCopyWithImpl<_$RatingEntityImpl>(this, _$identity);
}

abstract class _RatingEntity extends RatingEntity {
  const factory _RatingEntity(
      {final List<RatingItemEntity>? ratingItems,
      final int? total,
      final RatingSummary? ratingSummary}) = _$RatingEntityImpl;
  const _RatingEntity._() : super._();

  @override
  List<RatingItemEntity>? get ratingItems;
  @override
  int? get total;
  @override
  RatingSummary? get ratingSummary;
  @override
  @JsonKey(ignore: true)
  _$$RatingEntityImplCopyWith<_$RatingEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
