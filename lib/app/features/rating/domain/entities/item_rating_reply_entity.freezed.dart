// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_rating_reply_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RatingReplyEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get createdTime => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RatingReplyEntityCopyWith<RatingReplyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingReplyEntityCopyWith<$Res> {
  factory $RatingReplyEntityCopyWith(
          RatingReplyEntity value, $Res Function(RatingReplyEntity) then) =
      _$RatingReplyEntityCopyWithImpl<$Res, RatingReplyEntity>;
  @useResult
  $Res call({String? id, String? createdTime, String? userId, String? comment});
}

/// @nodoc
class _$RatingReplyEntityCopyWithImpl<$Res, $Val extends RatingReplyEntity>
    implements $RatingReplyEntityCopyWith<$Res> {
  _$RatingReplyEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdTime = freezed,
    Object? userId = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTime: freezed == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingReplyEntityImplCopyWith<$Res>
    implements $RatingReplyEntityCopyWith<$Res> {
  factory _$$RatingReplyEntityImplCopyWith(_$RatingReplyEntityImpl value,
          $Res Function(_$RatingReplyEntityImpl) then) =
      __$$RatingReplyEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? createdTime, String? userId, String? comment});
}

/// @nodoc
class __$$RatingReplyEntityImplCopyWithImpl<$Res>
    extends _$RatingReplyEntityCopyWithImpl<$Res, _$RatingReplyEntityImpl>
    implements _$$RatingReplyEntityImplCopyWith<$Res> {
  __$$RatingReplyEntityImplCopyWithImpl(_$RatingReplyEntityImpl _value,
      $Res Function(_$RatingReplyEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdTime = freezed,
    Object? userId = freezed,
    Object? comment = freezed,
  }) {
    return _then(_$RatingReplyEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTime: freezed == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RatingReplyEntityImpl extends _RatingReplyEntity
    with DiagnosticableTreeMixin {
  const _$RatingReplyEntityImpl(
      {this.id, this.createdTime, this.userId, this.comment})
      : super._();

  @override
  final String? id;
  @override
  final String? createdTime;
  @override
  final String? userId;
  @override
  final String? comment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RatingReplyEntity(id: $id, createdTime: $createdTime, userId: $userId, comment: $comment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RatingReplyEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('createdTime', createdTime))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('comment', comment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingReplyEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdTime, userId, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingReplyEntityImplCopyWith<_$RatingReplyEntityImpl> get copyWith =>
      __$$RatingReplyEntityImplCopyWithImpl<_$RatingReplyEntityImpl>(
          this, _$identity);
}

abstract class _RatingReplyEntity extends RatingReplyEntity {
  const factory _RatingReplyEntity(
      {final String? id,
      final String? createdTime,
      final String? userId,
      final String? comment}) = _$RatingReplyEntityImpl;
  const _RatingReplyEntity._() : super._();

  @override
  String? get id;
  @override
  String? get createdTime;
  @override
  String? get userId;
  @override
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$$RatingReplyEntityImplCopyWith<_$RatingReplyEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
