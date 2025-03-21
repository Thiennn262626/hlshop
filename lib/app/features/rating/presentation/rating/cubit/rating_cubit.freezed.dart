// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RatingState {
  ApiStatus get status => throw _privateConstructorUsedError;
  ApiStatus get uploadImageStatus => throw _privateConstructorUsedError;
  double get providerServiceRating => throw _privateConstructorUsedError;
  double get deliveryServiceRating => throw _privateConstructorUsedError;
  double get shipperServiceRating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RatingStateCopyWith<RatingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingStateCopyWith<$Res> {
  factory $RatingStateCopyWith(
          RatingState value, $Res Function(RatingState) then) =
      _$RatingStateCopyWithImpl<$Res, RatingState>;
  @useResult
  $Res call(
      {ApiStatus status,
      ApiStatus uploadImageStatus,
      double providerServiceRating,
      double deliveryServiceRating,
      double shipperServiceRating});

  $ApiStatusCopyWith<$Res> get status;
  $ApiStatusCopyWith<$Res> get uploadImageStatus;
}

/// @nodoc
class _$RatingStateCopyWithImpl<$Res, $Val extends RatingState>
    implements $RatingStateCopyWith<$Res> {
  _$RatingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? uploadImageStatus = null,
    Object? providerServiceRating = null,
    Object? deliveryServiceRating = null,
    Object? shipperServiceRating = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      uploadImageStatus: null == uploadImageStatus
          ? _value.uploadImageStatus
          : uploadImageStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      providerServiceRating: null == providerServiceRating
          ? _value.providerServiceRating
          : providerServiceRating // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryServiceRating: null == deliveryServiceRating
          ? _value.deliveryServiceRating
          : deliveryServiceRating // ignore: cast_nullable_to_non_nullable
              as double,
      shipperServiceRating: null == shipperServiceRating
          ? _value.shipperServiceRating
          : shipperServiceRating // ignore: cast_nullable_to_non_nullable
              as double,
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
  $ApiStatusCopyWith<$Res> get uploadImageStatus {
    return $ApiStatusCopyWith<$Res>(_value.uploadImageStatus, (value) {
      return _then(_value.copyWith(uploadImageStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDetailStateImplCopyWith<$Res>
    implements $RatingStateCopyWith<$Res> {
  factory _$$ProductDetailStateImplCopyWith(_$ProductDetailStateImpl value,
          $Res Function(_$ProductDetailStateImpl) then) =
      __$$ProductDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiStatus status,
      ApiStatus uploadImageStatus,
      double providerServiceRating,
      double deliveryServiceRating,
      double shipperServiceRating});

  @override
  $ApiStatusCopyWith<$Res> get status;
  @override
  $ApiStatusCopyWith<$Res> get uploadImageStatus;
}

/// @nodoc
class __$$ProductDetailStateImplCopyWithImpl<$Res>
    extends _$RatingStateCopyWithImpl<$Res, _$ProductDetailStateImpl>
    implements _$$ProductDetailStateImplCopyWith<$Res> {
  __$$ProductDetailStateImplCopyWithImpl(_$ProductDetailStateImpl _value,
      $Res Function(_$ProductDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? uploadImageStatus = null,
    Object? providerServiceRating = null,
    Object? deliveryServiceRating = null,
    Object? shipperServiceRating = null,
  }) {
    return _then(_$ProductDetailStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      uploadImageStatus: null == uploadImageStatus
          ? _value.uploadImageStatus
          : uploadImageStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      providerServiceRating: null == providerServiceRating
          ? _value.providerServiceRating
          : providerServiceRating // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryServiceRating: null == deliveryServiceRating
          ? _value.deliveryServiceRating
          : deliveryServiceRating // ignore: cast_nullable_to_non_nullable
              as double,
      shipperServiceRating: null == shipperServiceRating
          ? _value.shipperServiceRating
          : shipperServiceRating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ProductDetailStateImpl extends _ProductDetailState
    with DiagnosticableTreeMixin {
  const _$ProductDetailStateImpl(
      {this.status = const ApiStatus.initial(),
      this.uploadImageStatus = const ApiStatus.initial(),
      this.providerServiceRating = 5,
      this.deliveryServiceRating = 5,
      this.shipperServiceRating = 5})
      : super._();

  @override
  @JsonKey()
  final ApiStatus status;
  @override
  @JsonKey()
  final ApiStatus uploadImageStatus;
  @override
  @JsonKey()
  final double providerServiceRating;
  @override
  @JsonKey()
  final double deliveryServiceRating;
  @override
  @JsonKey()
  final double shipperServiceRating;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RatingState(status: $status, uploadImageStatus: $uploadImageStatus, providerServiceRating: $providerServiceRating, deliveryServiceRating: $deliveryServiceRating, shipperServiceRating: $shipperServiceRating)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RatingState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('uploadImageStatus', uploadImageStatus))
      ..add(DiagnosticsProperty('providerServiceRating', providerServiceRating))
      ..add(DiagnosticsProperty('deliveryServiceRating', deliveryServiceRating))
      ..add(DiagnosticsProperty('shipperServiceRating', shipperServiceRating));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.uploadImageStatus, uploadImageStatus) ||
                other.uploadImageStatus == uploadImageStatus) &&
            (identical(other.providerServiceRating, providerServiceRating) ||
                other.providerServiceRating == providerServiceRating) &&
            (identical(other.deliveryServiceRating, deliveryServiceRating) ||
                other.deliveryServiceRating == deliveryServiceRating) &&
            (identical(other.shipperServiceRating, shipperServiceRating) ||
                other.shipperServiceRating == shipperServiceRating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, uploadImageStatus,
      providerServiceRating, deliveryServiceRating, shipperServiceRating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailStateImplCopyWith<_$ProductDetailStateImpl> get copyWith =>
      __$$ProductDetailStateImplCopyWithImpl<_$ProductDetailStateImpl>(
          this, _$identity);
}

abstract class _ProductDetailState extends RatingState {
  const factory _ProductDetailState(
      {final ApiStatus status,
      final ApiStatus uploadImageStatus,
      final double providerServiceRating,
      final double deliveryServiceRating,
      final double shipperServiceRating}) = _$ProductDetailStateImpl;
  const _ProductDetailState._() : super._();

  @override
  ApiStatus get status;
  @override
  ApiStatus get uploadImageStatus;
  @override
  double get providerServiceRating;
  @override
  double get deliveryServiceRating;
  @override
  double get shipperServiceRating;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailStateImplCopyWith<_$ProductDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
