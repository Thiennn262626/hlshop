part of 'assess_cubit.dart';

@freezed
class AssessState with _$AssessState {
  const AssessState._();

  const factory AssessState({
    @Default(ApiStatus.initial()) ApiStatus status,
    @Default(null) AssessEntity? assess,
  }) = _AssessState;
}
