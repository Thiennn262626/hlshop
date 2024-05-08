// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RatingRequestEntity {
  String get orderId => throw _privateConstructorUsedError;
  List<RatingOrderItem> get ratingOrderItems =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RatingRequestEntityCopyWith<RatingRequestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingRequestEntityCopyWith<$Res> {
  factory $RatingRequestEntityCopyWith(
          RatingRequestEntity value, $Res Function(RatingRequestEntity) then) =
      _$RatingRequestEntityCopyWithImpl<$Res, RatingRequestEntity>;
  @useResult
  $Res call({String orderId, List<RatingOrderItem> ratingOrderItems});
}

/// @nodoc
class _$RatingRequestEntityCopyWithImpl<$Res, $Val extends RatingRequestEntity>
    implements $RatingRequestEntityCopyWith<$Res> {
  _$RatingRequestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? ratingOrderItems = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      ratingOrderItems: null == ratingOrderItems
          ? _value.ratingOrderItems
          : ratingOrderItems // ignore: cast_nullable_to_non_nullable
              as List<RatingOrderItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingRequestEntityImplCopyWith<$Res>
    implements $RatingRequestEntityCopyWith<$Res> {
  factory _$$RatingRequestEntityImplCopyWith(_$RatingRequestEntityImpl value,
          $Res Function(_$RatingRequestEntityImpl) then) =
      __$$RatingRequestEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String orderId, List<RatingOrderItem> ratingOrderItems});
}

/// @nodoc
class __$$RatingRequestEntityImplCopyWithImpl<$Res>
    extends _$RatingRequestEntityCopyWithImpl<$Res, _$RatingRequestEntityImpl>
    implements _$$RatingRequestEntityImplCopyWith<$Res> {
  __$$RatingRequestEntityImplCopyWithImpl(_$RatingRequestEntityImpl _value,
      $Res Function(_$RatingRequestEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? ratingOrderItems = null,
  }) {
    return _then(_$RatingRequestEntityImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      ratingOrderItems: null == ratingOrderItems
          ? _value._ratingOrderItems
          : ratingOrderItems // ignore: cast_nullable_to_non_nullable
              as List<RatingOrderItem>,
    ));
  }
}

/// @nodoc

class _$RatingRequestEntityImpl extends _RatingRequestEntity
    with DiagnosticableTreeMixin {
  const _$RatingRequestEntityImpl(
      {required this.orderId,
      required final List<RatingOrderItem> ratingOrderItems})
      : _ratingOrderItems = ratingOrderItems,
        super._();

  @override
  final String orderId;
  final List<RatingOrderItem> _ratingOrderItems;
  @override
  List<RatingOrderItem> get ratingOrderItems {
    if (_ratingOrderItems is EqualUnmodifiableListView)
      return _ratingOrderItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ratingOrderItems);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RatingRequestEntity(orderId: $orderId, ratingOrderItems: $ratingOrderItems)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RatingRequestEntity'))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('ratingOrderItems', ratingOrderItems));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingRequestEntityImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            const DeepCollectionEquality()
                .equals(other._ratingOrderItems, _ratingOrderItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId,
      const DeepCollectionEquality().hash(_ratingOrderItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingRequestEntityImplCopyWith<_$RatingRequestEntityImpl> get copyWith =>
      __$$RatingRequestEntityImplCopyWithImpl<_$RatingRequestEntityImpl>(
          this, _$identity);
}

abstract class _RatingRequestEntity extends RatingRequestEntity {
  const factory _RatingRequestEntity(
          {required final String orderId,
          required final List<RatingOrderItem> ratingOrderItems}) =
      _$RatingRequestEntityImpl;
  const _RatingRequestEntity._() : super._();

  @override
  String get orderId;
  @override
  List<RatingOrderItem> get ratingOrderItems;
  @override
  @JsonKey(ignore: true)
  _$$RatingRequestEntityImplCopyWith<_$RatingRequestEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RatingOrderItem {
  String? get id => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  DetailRating? get detailRating => throw _privateConstructorUsedError;
  List<String>? get imageIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RatingOrderItemCopyWith<RatingOrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingOrderItemCopyWith<$Res> {
  factory $RatingOrderItemCopyWith(
          RatingOrderItem value, $Res Function(RatingOrderItem) then) =
      _$RatingOrderItemCopyWithImpl<$Res, RatingOrderItem>;
  @useResult
  $Res call(
      {String? id,
      String? comment,
      DetailRating? detailRating,
      List<String>? imageIds});

  $DetailRatingCopyWith<$Res>? get detailRating;
}

/// @nodoc
class _$RatingOrderItemCopyWithImpl<$Res, $Val extends RatingOrderItem>
    implements $RatingOrderItemCopyWith<$Res> {
  _$RatingOrderItemCopyWithImpl(this._value, this._then);

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
    Object? imageIds = freezed,
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
      imageIds: freezed == imageIds
          ? _value.imageIds
          : imageIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
abstract class _$$RatingOrderItemImplCopyWith<$Res>
    implements $RatingOrderItemCopyWith<$Res> {
  factory _$$RatingOrderItemImplCopyWith(_$RatingOrderItemImpl value,
          $Res Function(_$RatingOrderItemImpl) then) =
      __$$RatingOrderItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? comment,
      DetailRating? detailRating,
      List<String>? imageIds});

  @override
  $DetailRatingCopyWith<$Res>? get detailRating;
}

/// @nodoc
class __$$RatingOrderItemImplCopyWithImpl<$Res>
    extends _$RatingOrderItemCopyWithImpl<$Res, _$RatingOrderItemImpl>
    implements _$$RatingOrderItemImplCopyWith<$Res> {
  __$$RatingOrderItemImplCopyWithImpl(
      _$RatingOrderItemImpl _value, $Res Function(_$RatingOrderItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? comment = freezed,
    Object? detailRating = freezed,
    Object? imageIds = freezed,
  }) {
    return _then(_$RatingOrderItemImpl(
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
      imageIds: freezed == imageIds
          ? _value._imageIds
          : imageIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$RatingOrderItemImpl extends _RatingOrderItem
    with DiagnosticableTreeMixin {
  const _$RatingOrderItemImpl(
      {this.id, this.comment, this.detailRating, final List<String>? imageIds})
      : _imageIds = imageIds,
        super._();

  @override
  final String? id;
  @override
  final String? comment;
  @override
  final DetailRating? detailRating;
  final List<String>? _imageIds;
  @override
  List<String>? get imageIds {
    final value = _imageIds;
    if (value == null) return null;
    if (_imageIds is EqualUnmodifiableListView) return _imageIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RatingOrderItem(id: $id, comment: $comment, detailRating: $detailRating, imageIds: $imageIds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RatingOrderItem'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('detailRating', detailRating))
      ..add(DiagnosticsProperty('imageIds', imageIds));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingOrderItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.detailRating, detailRating) ||
                other.detailRating == detailRating) &&
            const DeepCollectionEquality().equals(other._imageIds, _imageIds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, comment, detailRating,
      const DeepCollectionEquality().hash(_imageIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingOrderItemImplCopyWith<_$RatingOrderItemImpl> get copyWith =>
      __$$RatingOrderItemImplCopyWithImpl<_$RatingOrderItemImpl>(
          this, _$identity);
}

abstract class _RatingOrderItem extends RatingOrderItem {
  const factory _RatingOrderItem(
      {final String? id,
      final String? comment,
      final DetailRating? detailRating,
      final List<String>? imageIds}) = _$RatingOrderItemImpl;
  const _RatingOrderItem._() : super._();

  @override
  String? get id;
  @override
  String? get comment;
  @override
  DetailRating? get detailRating;
  @override
  List<String>? get imageIds;
  @override
  @JsonKey(ignore: true)
  _$$RatingOrderItemImplCopyWith<_$RatingOrderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
