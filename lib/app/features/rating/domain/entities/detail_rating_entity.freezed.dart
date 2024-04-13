// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_rating_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailRating {
  int? get productQuality => throw _privateConstructorUsedError;
  int? get sellerService => throw _privateConstructorUsedError;
  int? get deliveryService => throw _privateConstructorUsedError;
  int? get driverService => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailRatingCopyWith<DetailRating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailRatingCopyWith<$Res> {
  factory $DetailRatingCopyWith(
          DetailRating value, $Res Function(DetailRating) then) =
      _$DetailRatingCopyWithImpl<$Res, DetailRating>;
  @useResult
  $Res call(
      {int? productQuality,
      int? sellerService,
      int? deliveryService,
      int? driverService});
}

/// @nodoc
class _$DetailRatingCopyWithImpl<$Res, $Val extends DetailRating>
    implements $DetailRatingCopyWith<$Res> {
  _$DetailRatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productQuality = freezed,
    Object? sellerService = freezed,
    Object? deliveryService = freezed,
    Object? driverService = freezed,
  }) {
    return _then(_value.copyWith(
      productQuality: freezed == productQuality
          ? _value.productQuality
          : productQuality // ignore: cast_nullable_to_non_nullable
              as int?,
      sellerService: freezed == sellerService
          ? _value.sellerService
          : sellerService // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryService: freezed == deliveryService
          ? _value.deliveryService
          : deliveryService // ignore: cast_nullable_to_non_nullable
              as int?,
      driverService: freezed == driverService
          ? _value.driverService
          : driverService // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailRatingImplCopyWith<$Res>
    implements $DetailRatingCopyWith<$Res> {
  factory _$$DetailRatingImplCopyWith(
          _$DetailRatingImpl value, $Res Function(_$DetailRatingImpl) then) =
      __$$DetailRatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? productQuality,
      int? sellerService,
      int? deliveryService,
      int? driverService});
}

/// @nodoc
class __$$DetailRatingImplCopyWithImpl<$Res>
    extends _$DetailRatingCopyWithImpl<$Res, _$DetailRatingImpl>
    implements _$$DetailRatingImplCopyWith<$Res> {
  __$$DetailRatingImplCopyWithImpl(
      _$DetailRatingImpl _value, $Res Function(_$DetailRatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productQuality = freezed,
    Object? sellerService = freezed,
    Object? deliveryService = freezed,
    Object? driverService = freezed,
  }) {
    return _then(_$DetailRatingImpl(
      productQuality: freezed == productQuality
          ? _value.productQuality
          : productQuality // ignore: cast_nullable_to_non_nullable
              as int?,
      sellerService: freezed == sellerService
          ? _value.sellerService
          : sellerService // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryService: freezed == deliveryService
          ? _value.deliveryService
          : deliveryService // ignore: cast_nullable_to_non_nullable
              as int?,
      driverService: freezed == driverService
          ? _value.driverService
          : driverService // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$DetailRatingImpl extends _DetailRating with DiagnosticableTreeMixin {
  const _$DetailRatingImpl(
      {this.productQuality,
      this.sellerService,
      this.deliveryService,
      this.driverService})
      : super._();

  @override
  final int? productQuality;
  @override
  final int? sellerService;
  @override
  final int? deliveryService;
  @override
  final int? driverService;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailRating(productQuality: $productQuality, sellerService: $sellerService, deliveryService: $deliveryService, driverService: $driverService)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailRating'))
      ..add(DiagnosticsProperty('productQuality', productQuality))
      ..add(DiagnosticsProperty('sellerService', sellerService))
      ..add(DiagnosticsProperty('deliveryService', deliveryService))
      ..add(DiagnosticsProperty('driverService', driverService));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailRatingImpl &&
            (identical(other.productQuality, productQuality) ||
                other.productQuality == productQuality) &&
            (identical(other.sellerService, sellerService) ||
                other.sellerService == sellerService) &&
            (identical(other.deliveryService, deliveryService) ||
                other.deliveryService == deliveryService) &&
            (identical(other.driverService, driverService) ||
                other.driverService == driverService));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productQuality, sellerService,
      deliveryService, driverService);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailRatingImplCopyWith<_$DetailRatingImpl> get copyWith =>
      __$$DetailRatingImplCopyWithImpl<_$DetailRatingImpl>(this, _$identity);
}

abstract class _DetailRating extends DetailRating {
  const factory _DetailRating(
      {final int? productQuality,
      final int? sellerService,
      final int? deliveryService,
      final int? driverService}) = _$DetailRatingImpl;
  const _DetailRating._() : super._();

  @override
  int? get productQuality;
  @override
  int? get sellerService;
  @override
  int? get deliveryService;
  @override
  int? get driverService;
  @override
  @JsonKey(ignore: true)
  _$$DetailRatingImplCopyWith<_$DetailRatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
