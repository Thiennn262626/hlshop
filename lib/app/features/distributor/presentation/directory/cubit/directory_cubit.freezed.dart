// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'directory_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DirectoryState {
  ApiStatus get status => throw _privateConstructorUsedError;
  DirectoryEntity? get directory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DirectoryStateCopyWith<DirectoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectoryStateCopyWith<$Res> {
  factory $DirectoryStateCopyWith(
          DirectoryState value, $Res Function(DirectoryState) then) =
      _$DirectoryStateCopyWithImpl<$Res, DirectoryState>;
  @useResult
  $Res call({ApiStatus status, DirectoryEntity? directory});

  $ApiStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$DirectoryStateCopyWithImpl<$Res, $Val extends DirectoryState>
    implements $DirectoryStateCopyWith<$Res> {
  _$DirectoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? directory = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      directory: freezed == directory
          ? _value.directory
          : directory // ignore: cast_nullable_to_non_nullable
              as DirectoryEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiStatusCopyWith<$Res> get status {
    return $ApiStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DirectoryStateImplCopyWith<$Res>
    implements $DirectoryStateCopyWith<$Res> {
  factory _$$DirectoryStateImplCopyWith(_$DirectoryStateImpl value,
          $Res Function(_$DirectoryStateImpl) then) =
      __$$DirectoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiStatus status, DirectoryEntity? directory});

  @override
  $ApiStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$DirectoryStateImplCopyWithImpl<$Res>
    extends _$DirectoryStateCopyWithImpl<$Res, _$DirectoryStateImpl>
    implements _$$DirectoryStateImplCopyWith<$Res> {
  __$$DirectoryStateImplCopyWithImpl(
      _$DirectoryStateImpl _value, $Res Function(_$DirectoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? directory = freezed,
  }) {
    return _then(_$DirectoryStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      directory: freezed == directory
          ? _value.directory
          : directory // ignore: cast_nullable_to_non_nullable
              as DirectoryEntity?,
    ));
  }
}

/// @nodoc

class _$DirectoryStateImpl extends _DirectoryState
    with DiagnosticableTreeMixin {
  const _$DirectoryStateImpl(
      {this.status = const ApiStatus.initial(), this.directory = null})
      : super._();

  @override
  @JsonKey()
  final ApiStatus status;
  @override
  @JsonKey()
  final DirectoryEntity? directory;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DirectoryState(status: $status, directory: $directory)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DirectoryState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('directory', directory));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectoryStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.directory, directory) ||
                other.directory == directory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, directory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectoryStateImplCopyWith<_$DirectoryStateImpl> get copyWith =>
      __$$DirectoryStateImplCopyWithImpl<_$DirectoryStateImpl>(
          this, _$identity);
}

abstract class _DirectoryState extends DirectoryState {
  const factory _DirectoryState(
      {final ApiStatus status,
      final DirectoryEntity? directory}) = _$DirectoryStateImpl;
  const _DirectoryState._() : super._();

  @override
  ApiStatus get status;
  @override
  DirectoryEntity? get directory;
  @override
  @JsonKey(ignore: true)
  _$$DirectoryStateImplCopyWith<_$DirectoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
