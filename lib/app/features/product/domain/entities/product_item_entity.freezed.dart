// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductItemEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get modelID => throw _privateConstructorUsedError;
  String? get modelName => throw _privateConstructorUsedError;
  ImageEntity? get modelImage => throw _privateConstructorUsedError;
  PriceUnit? get modelPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductItemEntityCopyWith<ProductItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductItemEntityCopyWith<$Res> {
  factory $ProductItemEntityCopyWith(
          ProductItemEntity value, $Res Function(ProductItemEntity) then) =
      _$ProductItemEntityCopyWithImpl<$Res, ProductItemEntity>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? modelID,
      String? modelName,
      ImageEntity? modelImage,
      PriceUnit? modelPrice});
}

/// @nodoc
class _$ProductItemEntityCopyWithImpl<$Res, $Val extends ProductItemEntity>
    implements $ProductItemEntityCopyWith<$Res> {
  _$ProductItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? modelID = freezed,
    Object? modelName = freezed,
    Object? modelImage = freezed,
    Object? modelPrice = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      modelID: freezed == modelID
          ? _value.modelID
          : modelID // ignore: cast_nullable_to_non_nullable
              as String?,
      modelName: freezed == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String?,
      modelImage: freezed == modelImage
          ? _value.modelImage
          : modelImage // ignore: cast_nullable_to_non_nullable
              as ImageEntity?,
      modelPrice: freezed == modelPrice
          ? _value.modelPrice
          : modelPrice // ignore: cast_nullable_to_non_nullable
              as PriceUnit?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductItemEntityImplCopyWith<$Res>
    implements $ProductItemEntityCopyWith<$Res> {
  factory _$$ProductItemEntityImplCopyWith(_$ProductItemEntityImpl value,
          $Res Function(_$ProductItemEntityImpl) then) =
      __$$ProductItemEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? modelID,
      String? modelName,
      ImageEntity? modelImage,
      PriceUnit? modelPrice});
}

/// @nodoc
class __$$ProductItemEntityImplCopyWithImpl<$Res>
    extends _$ProductItemEntityCopyWithImpl<$Res, _$ProductItemEntityImpl>
    implements _$$ProductItemEntityImplCopyWith<$Res> {
  __$$ProductItemEntityImplCopyWithImpl(_$ProductItemEntityImpl _value,
      $Res Function(_$ProductItemEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? modelID = freezed,
    Object? modelName = freezed,
    Object? modelImage = freezed,
    Object? modelPrice = freezed,
  }) {
    return _then(_$ProductItemEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      modelID: freezed == modelID
          ? _value.modelID
          : modelID // ignore: cast_nullable_to_non_nullable
              as String?,
      modelName: freezed == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String?,
      modelImage: freezed == modelImage
          ? _value.modelImage
          : modelImage // ignore: cast_nullable_to_non_nullable
              as ImageEntity?,
      modelPrice: freezed == modelPrice
          ? _value.modelPrice
          : modelPrice // ignore: cast_nullable_to_non_nullable
              as PriceUnit?,
    ));
  }
}

/// @nodoc

class _$ProductItemEntityImpl extends _ProductItemEntity
    with DiagnosticableTreeMixin {
  const _$ProductItemEntityImpl(
      {this.id,
      this.name,
      this.modelID,
      this.modelName,
      this.modelImage,
      this.modelPrice})
      : super._();

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? modelID;
  @override
  final String? modelName;
  @override
  final ImageEntity? modelImage;
  @override
  final PriceUnit? modelPrice;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductItemEntity(id: $id, name: $name, modelID: $modelID, modelName: $modelName, modelImage: $modelImage, modelPrice: $modelPrice)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductItemEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('modelID', modelID))
      ..add(DiagnosticsProperty('modelName', modelName))
      ..add(DiagnosticsProperty('modelImage', modelImage))
      ..add(DiagnosticsProperty('modelPrice', modelPrice));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductItemEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.modelID, modelID) || other.modelID == modelID) &&
            (identical(other.modelName, modelName) ||
                other.modelName == modelName) &&
            (identical(other.modelImage, modelImage) ||
                other.modelImage == modelImage) &&
            (identical(other.modelPrice, modelPrice) ||
                other.modelPrice == modelPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, modelID, modelName, modelImage, modelPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductItemEntityImplCopyWith<_$ProductItemEntityImpl> get copyWith =>
      __$$ProductItemEntityImplCopyWithImpl<_$ProductItemEntityImpl>(
          this, _$identity);
}

abstract class _ProductItemEntity extends ProductItemEntity {
  const factory _ProductItemEntity(
      {final String? id,
      final String? name,
      final String? modelID,
      final String? modelName,
      final ImageEntity? modelImage,
      final PriceUnit? modelPrice}) = _$ProductItemEntityImpl;
  const _ProductItemEntity._() : super._();

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get modelID;
  @override
  String? get modelName;
  @override
  ImageEntity? get modelImage;
  @override
  PriceUnit? get modelPrice;
  @override
  @JsonKey(ignore: true)
  _$$ProductItemEntityImplCopyWith<_$ProductItemEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
