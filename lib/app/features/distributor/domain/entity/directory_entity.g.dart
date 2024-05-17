// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directory_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DirectoryEntityCWProxy {
  DirectoryEntity id(String? id);

  DirectoryEntity name(String? name);

  DirectoryEntity amount(String? amount);

  DirectoryEntity img(String? img);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DirectoryEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DirectoryEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  DirectoryEntity call({
    String? id,
    String? name,
    String? amount,
    String? img,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDirectoryEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDirectoryEntity.copyWith.fieldName(...)`
class _$DirectoryEntityCWProxyImpl implements _$DirectoryEntityCWProxy {
  const _$DirectoryEntityCWProxyImpl(this._value);

  final DirectoryEntity _value;

  @override
  DirectoryEntity id(String? id) => this(id: id);

  @override
  DirectoryEntity name(String? name) => this(name: name);

  @override
  DirectoryEntity amount(String? amount) => this(amount: amount);

  @override
  DirectoryEntity img(String? img) => this(img: img);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DirectoryEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DirectoryEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  DirectoryEntity call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? amount = const $CopyWithPlaceholder(),
    Object? img = const $CopyWithPlaceholder(),
  }) {
    return DirectoryEntity(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      amount: amount == const $CopyWithPlaceholder()
          ? _value.amount
          // ignore: cast_nullable_to_non_nullable
          : amount as String?,
      img: img == const $CopyWithPlaceholder()
          ? _value.img
          // ignore: cast_nullable_to_non_nullable
          : img as String?,
    );
  }
}

extension $DirectoryEntityCopyWith on DirectoryEntity {
  /// Returns a callable class that can be used as follows: `instanceOfDirectoryEntity.copyWith(...)` or like so:`instanceOfDirectoryEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DirectoryEntityCWProxy get copyWith => _$DirectoryEntityCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `DirectoryEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DirectoryEntity(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  DirectoryEntity copyWithNull({
    bool id = false,
    bool name = false,
    bool amount = false,
    bool img = false,
  }) {
    return DirectoryEntity(
      id: id == true ? null : this.id,
      name: name == true ? null : this.name,
      amount: amount == true ? null : this.amount,
      img: img == true ? null : this.img,
    );
  }
}
