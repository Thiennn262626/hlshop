// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_order_req_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RatingOrderReqEntity {
  String? get orderID => throw _privateConstructorUsedError;
  List<OrderItemEntity>? get orderItemEntity =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RatingOrderReqEntityCopyWith<RatingOrderReqEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingOrderReqEntityCopyWith<$Res> {
  factory $RatingOrderReqEntityCopyWith(RatingOrderReqEntity value,
          $Res Function(RatingOrderReqEntity) then) =
      _$RatingOrderReqEntityCopyWithImpl<$Res, RatingOrderReqEntity>;
  @useResult
  $Res call({String? orderID, List<OrderItemEntity>? orderItemEntity});
}

/// @nodoc
class _$RatingOrderReqEntityCopyWithImpl<$Res,
        $Val extends RatingOrderReqEntity>
    implements $RatingOrderReqEntityCopyWith<$Res> {
  _$RatingOrderReqEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderID = freezed,
    Object? orderItemEntity = freezed,
  }) {
    return _then(_value.copyWith(
      orderID: freezed == orderID
          ? _value.orderID
          : orderID // ignore: cast_nullable_to_non_nullable
              as String?,
      orderItemEntity: freezed == orderItemEntity
          ? _value.orderItemEntity
          : orderItemEntity // ignore: cast_nullable_to_non_nullable
              as List<OrderItemEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingOrderReqEntityImplCopyWith<$Res>
    implements $RatingOrderReqEntityCopyWith<$Res> {
  factory _$$RatingOrderReqEntityImplCopyWith(_$RatingOrderReqEntityImpl value,
          $Res Function(_$RatingOrderReqEntityImpl) then) =
      __$$RatingOrderReqEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? orderID, List<OrderItemEntity>? orderItemEntity});
}

/// @nodoc
class __$$RatingOrderReqEntityImplCopyWithImpl<$Res>
    extends _$RatingOrderReqEntityCopyWithImpl<$Res, _$RatingOrderReqEntityImpl>
    implements _$$RatingOrderReqEntityImplCopyWith<$Res> {
  __$$RatingOrderReqEntityImplCopyWithImpl(_$RatingOrderReqEntityImpl _value,
      $Res Function(_$RatingOrderReqEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderID = freezed,
    Object? orderItemEntity = freezed,
  }) {
    return _then(_$RatingOrderReqEntityImpl(
      orderID: freezed == orderID
          ? _value.orderID
          : orderID // ignore: cast_nullable_to_non_nullable
              as String?,
      orderItemEntity: freezed == orderItemEntity
          ? _value._orderItemEntity
          : orderItemEntity // ignore: cast_nullable_to_non_nullable
              as List<OrderItemEntity>?,
    ));
  }
}

/// @nodoc

class _$RatingOrderReqEntityImpl extends _RatingOrderReqEntity
    with DiagnosticableTreeMixin {
  const _$RatingOrderReqEntityImpl(
      {this.orderID, final List<OrderItemEntity>? orderItemEntity})
      : _orderItemEntity = orderItemEntity,
        super._();

  @override
  final String? orderID;
  final List<OrderItemEntity>? _orderItemEntity;
  @override
  List<OrderItemEntity>? get orderItemEntity {
    final value = _orderItemEntity;
    if (value == null) return null;
    if (_orderItemEntity is EqualUnmodifiableListView) return _orderItemEntity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RatingOrderReqEntity(orderID: $orderID, orderItemEntity: $orderItemEntity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RatingOrderReqEntity'))
      ..add(DiagnosticsProperty('orderID', orderID))
      ..add(DiagnosticsProperty('orderItemEntity', orderItemEntity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingOrderReqEntityImpl &&
            (identical(other.orderID, orderID) || other.orderID == orderID) &&
            const DeepCollectionEquality()
                .equals(other._orderItemEntity, _orderItemEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderID,
      const DeepCollectionEquality().hash(_orderItemEntity));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingOrderReqEntityImplCopyWith<_$RatingOrderReqEntityImpl>
      get copyWith =>
          __$$RatingOrderReqEntityImplCopyWithImpl<_$RatingOrderReqEntityImpl>(
              this, _$identity);
}

abstract class _RatingOrderReqEntity extends RatingOrderReqEntity {
  const factory _RatingOrderReqEntity(
          {final String? orderID,
          final List<OrderItemEntity>? orderItemEntity}) =
      _$RatingOrderReqEntityImpl;
  const _RatingOrderReqEntity._() : super._();

  @override
  String? get orderID;
  @override
  List<OrderItemEntity>? get orderItemEntity;
  @override
  @JsonKey(ignore: true)
  _$$RatingOrderReqEntityImplCopyWith<_$RatingOrderReqEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderItemEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  DetailRating? get detailRating => throw _privateConstructorUsedError;
  List<ImageEntity>? get images => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderItemEntityCopyWith<OrderItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemEntityCopyWith<$Res> {
  factory $OrderItemEntityCopyWith(
          OrderItemEntity value, $Res Function(OrderItemEntity) then) =
      _$OrderItemEntityCopyWithImpl<$Res, OrderItemEntity>;
  @useResult
  $Res call(
      {String? id,
      String? comment,
      DetailRating? detailRating,
      List<ImageEntity>? images});

  $DetailRatingCopyWith<$Res>? get detailRating;
}

/// @nodoc
class _$OrderItemEntityCopyWithImpl<$Res, $Val extends OrderItemEntity>
    implements $OrderItemEntityCopyWith<$Res> {
  _$OrderItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? comment = freezed,
    Object? detailRating = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      detailRating: freezed == detailRating
          ? _value.detailRating
          : detailRating // ignore: cast_nullable_to_non_nullable
              as DetailRating?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageEntity>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailRatingCopyWith<$Res>? get detailRating {
    if (_value.detailRating == null) {
      return null;
    }

    return $DetailRatingCopyWith<$Res>(_value.detailRating!, (value) {
      return _then(_value.copyWith(detailRating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderItemEntityImplCopyWith<$Res>
    implements $OrderItemEntityCopyWith<$Res> {
  factory _$$OrderItemEntityImplCopyWith(_$OrderItemEntityImpl value,
          $Res Function(_$OrderItemEntityImpl) then) =
      __$$OrderItemEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? comment,
      DetailRating? detailRating,
      List<ImageEntity>? images});

  @override
  $DetailRatingCopyWith<$Res>? get detailRating;
}

/// @nodoc
class __$$OrderItemEntityImplCopyWithImpl<$Res>
    extends _$OrderItemEntityCopyWithImpl<$Res, _$OrderItemEntityImpl>
    implements _$$OrderItemEntityImplCopyWith<$Res> {
  __$$OrderItemEntityImplCopyWithImpl(
      _$OrderItemEntityImpl _value, $Res Function(_$OrderItemEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? comment = freezed,
    Object? detailRating = freezed,
    Object? images = freezed,
  }) {
    return _then(_$OrderItemEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      detailRating: freezed == detailRating
          ? _value.detailRating
          : detailRating // ignore: cast_nullable_to_non_nullable
              as DetailRating?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageEntity>?,
    ));
  }
}

/// @nodoc

class _$OrderItemEntityImpl extends _OrderItemEntity
    with DiagnosticableTreeMixin {
  const _$OrderItemEntityImpl(
      {this.id,
      this.comment,
      this.detailRating,
      final List<ImageEntity>? images})
      : _images = images,
        super._();

  @override
  final String? id;
  @override
  final String? comment;
  @override
  final DetailRating? detailRating;
  final List<ImageEntity>? _images;
  @override
  List<ImageEntity>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderItemEntity(id: $id, comment: $comment, detailRating: $detailRating, images: $images)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderItemEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('detailRating', detailRating))
      ..add(DiagnosticsProperty('images', images));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.detailRating, detailRating) ||
                other.detailRating == detailRating) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, comment, detailRating,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemEntityImplCopyWith<_$OrderItemEntityImpl> get copyWith =>
      __$$OrderItemEntityImplCopyWithImpl<_$OrderItemEntityImpl>(
          this, _$identity);
}

abstract class _OrderItemEntity extends OrderItemEntity {
  const factory _OrderItemEntity(
      {final String? id,
      final String? comment,
      final DetailRating? detailRating,
      final List<ImageEntity>? images}) = _$OrderItemEntityImpl;
  const _OrderItemEntity._() : super._();

  @override
  String? get id;
  @override
  String? get comment;
  @override
  DetailRating? get detailRating;
  @override
  List<ImageEntity>? get images;
  @override
  @JsonKey(ignore: true)
  _$$OrderItemEntityImplCopyWith<_$OrderItemEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
