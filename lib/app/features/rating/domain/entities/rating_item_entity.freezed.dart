// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RatingItemEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get itemId => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  int? get ratingStar => throw _privateConstructorUsedError;
  String? get createdTime => throw _privateConstructorUsedError;
  int? get editable => throw _privateConstructorUsedError;
  String? get editableDate => throw _privateConstructorUsedError;
  String? get userID => throw _privateConstructorUsedError;
  String? get authorUserName => throw _privateConstructorUsedError;
  String? get authorPortrait => throw _privateConstructorUsedError;
  List<ProductItemEntity>? get productItems =>
      throw _privateConstructorUsedError;
  DetailRating? get detailRating => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  RatingReplyEntity? get ratingReply => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RatingItemEntityCopyWith<RatingItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingItemEntityCopyWith<$Res> {
  factory $RatingItemEntityCopyWith(
          RatingItemEntity value, $Res Function(RatingItemEntity) then) =
      _$RatingItemEntityCopyWithImpl<$Res, RatingItemEntity>;
  @useResult
  $Res call(
      {String? id,
      String? itemId,
      String? comment,
      int? ratingStar,
      String? createdTime,
      int? editable,
      String? editableDate,
      String? userID,
      String? authorUserName,
      String? authorPortrait,
      List<ProductItemEntity>? productItems,
      DetailRating? detailRating,
      List<String>? images,
      RatingReplyEntity? ratingReply});

  $DetailRatingCopyWith<$Res>? get detailRating;
  $RatingReplyEntityCopyWith<$Res>? get ratingReply;
}

/// @nodoc
class _$RatingItemEntityCopyWithImpl<$Res, $Val extends RatingItemEntity>
    implements $RatingItemEntityCopyWith<$Res> {
  _$RatingItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? itemId = freezed,
    Object? comment = freezed,
    Object? ratingStar = freezed,
    Object? createdTime = freezed,
    Object? editable = freezed,
    Object? editableDate = freezed,
    Object? userID = freezed,
    Object? authorUserName = freezed,
    Object? authorPortrait = freezed,
    Object? productItems = freezed,
    Object? detailRating = freezed,
    Object? images = freezed,
    Object? ratingReply = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      ratingStar: freezed == ratingStar
          ? _value.ratingStar
          : ratingStar // ignore: cast_nullable_to_non_nullable
              as int?,
      createdTime: freezed == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as String?,
      editable: freezed == editable
          ? _value.editable
          : editable // ignore: cast_nullable_to_non_nullable
              as int?,
      editableDate: freezed == editableDate
          ? _value.editableDate
          : editableDate // ignore: cast_nullable_to_non_nullable
              as String?,
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
      authorUserName: freezed == authorUserName
          ? _value.authorUserName
          : authorUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      authorPortrait: freezed == authorPortrait
          ? _value.authorPortrait
          : authorPortrait // ignore: cast_nullable_to_non_nullable
              as String?,
      productItems: freezed == productItems
          ? _value.productItems
          : productItems // ignore: cast_nullable_to_non_nullable
              as List<ProductItemEntity>?,
      detailRating: freezed == detailRating
          ? _value.detailRating
          : detailRating // ignore: cast_nullable_to_non_nullable
              as DetailRating?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ratingReply: freezed == ratingReply
          ? _value.ratingReply
          : ratingReply // ignore: cast_nullable_to_non_nullable
              as RatingReplyEntity?,
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

  @override
  @pragma('vm:prefer-inline')
  $RatingReplyEntityCopyWith<$Res>? get ratingReply {
    if (_value.ratingReply == null) {
      return null;
    }

    return $RatingReplyEntityCopyWith<$Res>(_value.ratingReply!, (value) {
      return _then(_value.copyWith(ratingReply: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RatingItemEntityImplCopyWith<$Res>
    implements $RatingItemEntityCopyWith<$Res> {
  factory _$$RatingItemEntityImplCopyWith(_$RatingItemEntityImpl value,
          $Res Function(_$RatingItemEntityImpl) then) =
      __$$RatingItemEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? itemId,
      String? comment,
      int? ratingStar,
      String? createdTime,
      int? editable,
      String? editableDate,
      String? userID,
      String? authorUserName,
      String? authorPortrait,
      List<ProductItemEntity>? productItems,
      DetailRating? detailRating,
      List<String>? images,
      RatingReplyEntity? ratingReply});

  @override
  $DetailRatingCopyWith<$Res>? get detailRating;
  @override
  $RatingReplyEntityCopyWith<$Res>? get ratingReply;
}

/// @nodoc
class __$$RatingItemEntityImplCopyWithImpl<$Res>
    extends _$RatingItemEntityCopyWithImpl<$Res, _$RatingItemEntityImpl>
    implements _$$RatingItemEntityImplCopyWith<$Res> {
  __$$RatingItemEntityImplCopyWithImpl(_$RatingItemEntityImpl _value,
      $Res Function(_$RatingItemEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? itemId = freezed,
    Object? comment = freezed,
    Object? ratingStar = freezed,
    Object? createdTime = freezed,
    Object? editable = freezed,
    Object? editableDate = freezed,
    Object? userID = freezed,
    Object? authorUserName = freezed,
    Object? authorPortrait = freezed,
    Object? productItems = freezed,
    Object? detailRating = freezed,
    Object? images = freezed,
    Object? ratingReply = freezed,
  }) {
    return _then(_$RatingItemEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      ratingStar: freezed == ratingStar
          ? _value.ratingStar
          : ratingStar // ignore: cast_nullable_to_non_nullable
              as int?,
      createdTime: freezed == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as String?,
      editable: freezed == editable
          ? _value.editable
          : editable // ignore: cast_nullable_to_non_nullable
              as int?,
      editableDate: freezed == editableDate
          ? _value.editableDate
          : editableDate // ignore: cast_nullable_to_non_nullable
              as String?,
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
      authorUserName: freezed == authorUserName
          ? _value.authorUserName
          : authorUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      authorPortrait: freezed == authorPortrait
          ? _value.authorPortrait
          : authorPortrait // ignore: cast_nullable_to_non_nullable
              as String?,
      productItems: freezed == productItems
          ? _value._productItems
          : productItems // ignore: cast_nullable_to_non_nullable
              as List<ProductItemEntity>?,
      detailRating: freezed == detailRating
          ? _value.detailRating
          : detailRating // ignore: cast_nullable_to_non_nullable
              as DetailRating?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ratingReply: freezed == ratingReply
          ? _value.ratingReply
          : ratingReply // ignore: cast_nullable_to_non_nullable
              as RatingReplyEntity?,
    ));
  }
}

/// @nodoc

class _$RatingItemEntityImpl extends _RatingItemEntity
    with DiagnosticableTreeMixin {
  const _$RatingItemEntityImpl(
      {this.id,
      this.itemId,
      this.comment,
      this.ratingStar,
      this.createdTime,
      this.editable,
      this.editableDate,
      this.userID,
      this.authorUserName,
      this.authorPortrait,
      final List<ProductItemEntity>? productItems,
      this.detailRating,
      final List<String>? images,
      this.ratingReply})
      : _productItems = productItems,
        _images = images,
        super._();

  @override
  final String? id;
  @override
  final String? itemId;
  @override
  final String? comment;
  @override
  final int? ratingStar;
  @override
  final String? createdTime;
  @override
  final int? editable;
  @override
  final String? editableDate;
  @override
  final String? userID;
  @override
  final String? authorUserName;
  @override
  final String? authorPortrait;
  final List<ProductItemEntity>? _productItems;
  @override
  List<ProductItemEntity>? get productItems {
    final value = _productItems;
    if (value == null) return null;
    if (_productItems is EqualUnmodifiableListView) return _productItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DetailRating? detailRating;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final RatingReplyEntity? ratingReply;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RatingItemEntity(id: $id, itemId: $itemId, comment: $comment, ratingStar: $ratingStar, createdTime: $createdTime, editable: $editable, editableDate: $editableDate, userID: $userID, authorUserName: $authorUserName, authorPortrait: $authorPortrait, productItems: $productItems, detailRating: $detailRating, images: $images, ratingReply: $ratingReply)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RatingItemEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('itemId', itemId))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('ratingStar', ratingStar))
      ..add(DiagnosticsProperty('createdTime', createdTime))
      ..add(DiagnosticsProperty('editable', editable))
      ..add(DiagnosticsProperty('editableDate', editableDate))
      ..add(DiagnosticsProperty('userID', userID))
      ..add(DiagnosticsProperty('authorUserName', authorUserName))
      ..add(DiagnosticsProperty('authorPortrait', authorPortrait))
      ..add(DiagnosticsProperty('productItems', productItems))
      ..add(DiagnosticsProperty('detailRating', detailRating))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('ratingReply', ratingReply));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingItemEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.ratingStar, ratingStar) ||
                other.ratingStar == ratingStar) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.editable, editable) ||
                other.editable == editable) &&
            (identical(other.editableDate, editableDate) ||
                other.editableDate == editableDate) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.authorUserName, authorUserName) ||
                other.authorUserName == authorUserName) &&
            (identical(other.authorPortrait, authorPortrait) ||
                other.authorPortrait == authorPortrait) &&
            const DeepCollectionEquality()
                .equals(other._productItems, _productItems) &&
            (identical(other.detailRating, detailRating) ||
                other.detailRating == detailRating) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.ratingReply, ratingReply) ||
                other.ratingReply == ratingReply));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      itemId,
      comment,
      ratingStar,
      createdTime,
      editable,
      editableDate,
      userID,
      authorUserName,
      authorPortrait,
      const DeepCollectionEquality().hash(_productItems),
      detailRating,
      const DeepCollectionEquality().hash(_images),
      ratingReply);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingItemEntityImplCopyWith<_$RatingItemEntityImpl> get copyWith =>
      __$$RatingItemEntityImplCopyWithImpl<_$RatingItemEntityImpl>(
          this, _$identity);
}

abstract class _RatingItemEntity extends RatingItemEntity {
  const factory _RatingItemEntity(
      {final String? id,
      final String? itemId,
      final String? comment,
      final int? ratingStar,
      final String? createdTime,
      final int? editable,
      final String? editableDate,
      final String? userID,
      final String? authorUserName,
      final String? authorPortrait,
      final List<ProductItemEntity>? productItems,
      final DetailRating? detailRating,
      final List<String>? images,
      final RatingReplyEntity? ratingReply}) = _$RatingItemEntityImpl;
  const _RatingItemEntity._() : super._();

  @override
  String? get id;
  @override
  String? get itemId;
  @override
  String? get comment;
  @override
  int? get ratingStar;
  @override
  String? get createdTime;
  @override
  int? get editable;
  @override
  String? get editableDate;
  @override
  String? get userID;
  @override
  String? get authorUserName;
  @override
  String? get authorPortrait;
  @override
  List<ProductItemEntity>? get productItems;
  @override
  DetailRating? get detailRating;
  @override
  List<String>? get images;
  @override
  RatingReplyEntity? get ratingReply;
  @override
  @JsonKey(ignore: true)
  _$$RatingItemEntityImplCopyWith<_$RatingItemEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
