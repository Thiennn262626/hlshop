// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_rating_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductRatingState {
  ApiStatus get status => throw _privateConstructorUsedError;
  RatingEntity? get ratingEntity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductRatingStateCopyWith<ProductRatingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductRatingStateCopyWith<$Res> {
  factory $ProductRatingStateCopyWith(
          ProductRatingState value, $Res Function(ProductRatingState) then) =
      _$ProductRatingStateCopyWithImpl<$Res, ProductRatingState>;
  @useResult
  $Res call({ApiStatus status, RatingEntity? ratingEntity});

  $ApiStatusCopyWith<$Res> get status;
  $RatingEntityCopyWith<$Res>? get ratingEntity;
}

/// @nodoc
class _$ProductRatingStateCopyWithImpl<$Res, $Val extends ProductRatingState>
    implements $ProductRatingStateCopyWith<$Res> {
  _$ProductRatingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? ratingEntity = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      ratingEntity: freezed == ratingEntity
          ? _value.ratingEntity
          : ratingEntity // ignore: cast_nullable_to_non_nullable
              as RatingEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiStatusCopyWith<$Res> get status {
    return $ApiStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingEntityCopyWith<$Res>? get ratingEntity {
    if (_value.ratingEntity == null) {
      return null;
    }

    return $RatingEntityCopyWith<$Res>(_value.ratingEntity!, (value) {
      return _then(_value.copyWith(ratingEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductRatingStateImplCopyWith<$Res>
    implements $ProductRatingStateCopyWith<$Res> {
  factory _$$ProductRatingStateImplCopyWith(_$ProductRatingStateImpl value,
          $Res Function(_$ProductRatingStateImpl) then) =
      __$$ProductRatingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiStatus status, RatingEntity? ratingEntity});

  @override
  $ApiStatusCopyWith<$Res> get status;
  @override
  $RatingEntityCopyWith<$Res>? get ratingEntity;
}

/// @nodoc
class __$$ProductRatingStateImplCopyWithImpl<$Res>
    extends _$ProductRatingStateCopyWithImpl<$Res, _$ProductRatingStateImpl>
    implements _$$ProductRatingStateImplCopyWith<$Res> {
  __$$ProductRatingStateImplCopyWithImpl(_$ProductRatingStateImpl _value,
      $Res Function(_$ProductRatingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? ratingEntity = freezed,
  }) {
    return _then(_$ProductRatingStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      ratingEntity: freezed == ratingEntity
          ? _value.ratingEntity
          : ratingEntity // ignore: cast_nullable_to_non_nullable
              as RatingEntity?,
    ));
  }
}

/// @nodoc

class _$ProductRatingStateImpl extends _ProductRatingState
    with DiagnosticableTreeMixin {
  const _$ProductRatingStateImpl(
      {this.status = const ApiStatus.initial(), this.ratingEntity})
      : super._();

  @override
  @JsonKey()
  final ApiStatus status;
  @override
  final RatingEntity? ratingEntity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductRatingState(status: $status, ratingEntity: $ratingEntity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductRatingState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('ratingEntity', ratingEntity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRatingStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.ratingEntity, ratingEntity) ||
                other.ratingEntity == ratingEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, ratingEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRatingStateImplCopyWith<_$ProductRatingStateImpl> get copyWith =>
      __$$ProductRatingStateImplCopyWithImpl<_$ProductRatingStateImpl>(
          this, _$identity);
}

abstract class _ProductRatingState extends ProductRatingState {
  const factory _ProductRatingState(
      {final ApiStatus status,
      final RatingEntity? ratingEntity}) = _$ProductRatingStateImpl;
  const _ProductRatingState._() : super._();

  @override
  ApiStatus get status;
  @override
  RatingEntity? get ratingEntity;
  @override
  @JsonKey(ignore: true)
  _$$ProductRatingStateImplCopyWith<_$ProductRatingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
