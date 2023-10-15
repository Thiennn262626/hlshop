part of 'app_item_counter_bloc.dart';

@immutable
abstract class AppCartItemCounterEvent {}

class AppCartItemCounterSubmitValueEvent extends AppCartItemCounterEvent {
  AppCartItemCounterSubmitValueEvent();
}

class AppCartItemCounterAddEvent extends AppCartItemCounterEvent {
  AppCartItemCounterAddEvent();
}

class AppCartItemCounterRemoveEvent extends AppCartItemCounterEvent {
  AppCartItemCounterRemoveEvent();
}

class AppCartItemCounterValueChangeEvent extends AppCartItemCounterEvent {
  AppCartItemCounterValueChangeEvent(this.value);

  final int value;
}
