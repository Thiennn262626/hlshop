part of 'app_item_counter_bloc.dart';

enum AppCartItemCounterStatus {
  initial,
  changing,
  submit,
}

class AppCartItemCounterState extends Equatable {
  const AppCartItemCounterState({
    this.counterValue = 0,
    this.status = AppCartItemCounterStatus.initial,
  });

  final int counterValue;
  final AppCartItemCounterStatus status;

  @override
  List<Object?> get props => [counterValue, status];

  AppCartItemCounterState copyWith({
    int? counterValue,
    AppCartItemCounterStatus? status,
  }) {
    return AppCartItemCounterState(
      counterValue: counterValue ?? this.counterValue,
      status: status ?? this.status,
    );
  }
}
