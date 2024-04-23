// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assess_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AssessEntityCWProxy {
  AssessEntity id(String? id);

  AssessEntity name(String? name);

  AssessEntity avatar(String? avatar);

  AssessEntity comment(String? comment);

  AssessEntity imgList(List<ImageEntity>? imgList);

  AssessEntity date(String? date);

  AssessEntity feedback(String? feedback);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AssessEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AssessEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  AssessEntity call({
    String? id,
    String? name,
    String? avatar,
    String? comment,
    List<ImageEntity>? imgList,
    String? date,
    String? feedback,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAssessEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAssessEntity.copyWith.fieldName(...)`
class _$AssessEntityCWProxyImpl implements _$AssessEntityCWProxy {
  const _$AssessEntityCWProxyImpl(this._value);

  final AssessEntity _value;

  @override
  AssessEntity id(String? id) => this(id: id);

  @override
  AssessEntity name(String? name) => this(name: name);

  @override
  AssessEntity avatar(String? avatar) => this(avatar: avatar);

  @override
  AssessEntity comment(String? comment) => this(comment: comment);

  @override
  AssessEntity imgList(List<ImageEntity>? imgList) => this(imgList: imgList);

  @override
  AssessEntity date(String? date) => this(date: date);

  @override
  AssessEntity feedback(String? feedback) => this(feedback: feedback);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AssessEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AssessEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  AssessEntity call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? avatar = const $CopyWithPlaceholder(),
    Object? comment = const $CopyWithPlaceholder(),
    Object? imgList = const $CopyWithPlaceholder(),
    Object? date = const $CopyWithPlaceholder(),
    Object? feedback = const $CopyWithPlaceholder(),
  }) {
    return AssessEntity(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      avatar: avatar == const $CopyWithPlaceholder()
          ? _value.avatar
          // ignore: cast_nullable_to_non_nullable
          : avatar as String?,
      comment: comment == const $CopyWithPlaceholder()
          ? _value.comment
          // ignore: cast_nullable_to_non_nullable
          : comment as String?,
      imgList: imgList == const $CopyWithPlaceholder()
          ? _value.imgList
          // ignore: cast_nullable_to_non_nullable
          : imgList as List<ImageEntity>?,
      date: date == const $CopyWithPlaceholder()
          ? _value.date
          // ignore: cast_nullable_to_non_nullable
          : date as String?,
      feedback: feedback == const $CopyWithPlaceholder()
          ? _value.feedback
          // ignore: cast_nullable_to_non_nullable
          : feedback as String?,
    );
  }
}

extension $AssessEntityCopyWith on AssessEntity {
  /// Returns a callable class that can be used as follows: `instanceOfAssessEntity.copyWith(...)` or like so:`instanceOfAssessEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AssessEntityCWProxy get copyWith => _$AssessEntityCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `AssessEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AssessEntity(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  AssessEntity copyWithNull({
    bool id = false,
    bool name = false,
    bool avatar = false,
    bool comment = false,
    bool imgList = false,
    bool date = false,
    bool feedback = false,
  }) {
    return AssessEntity(
      id: id == true ? null : this.id,
      name: name == true ? null : this.name,
      avatar: avatar == true ? null : this.avatar,
      comment: comment == true ? null : this.comment,
      imgList: imgList == true ? null : this.imgList,
      date: date == true ? null : this.date,
      feedback: feedback == true ? null : this.feedback,
    );
  }
}
