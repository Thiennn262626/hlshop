import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/common/presentation/widgets/app_item_counter/app_item_counter_args.dart';

part 'app_item_counter_event.dart';
part 'app_item_counter_state.dart';

class AppCartItemCounterBloc
    extends Bloc<AppCartItemCounterEvent, AppCartItemCounterState> {
  AppCartItemCounterBloc({
    int initialValue = 1,
    required this.submitCallBack,
  }) : super(AppCartItemCounterState(counterValue: initialValue)) {
    on<AppCartItemCounterAddEvent>(_onAddItem);
    on<AppCartItemCounterRemoveEvent>(_onRemoveItem);
    on<AppCartItemCounterValueChangeEvent>(_onValueChange);
    on<AppCartItemCounterSubmitValueEvent>(_onSubmitValue);
  }

  Timer? _timer;
  final AppCartItemCounterSubmitCallBack submitCallBack;

  void onInputDelayCallBack({
    Duration inputDelay = const Duration(seconds: 1),
  }) {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(inputDelay, () {
      add(AppCartItemCounterSubmitValueEvent());
      _timer?.cancel();
      _timer = null;
    });
  }

  void _cancelCallBack() {
    _timer?.cancel();
    _timer = null;
  }

  void _onAddItem(
      AppCartItemCounterAddEvent event, Emitter<AppCartItemCounterState> emit) {
    emit(state.copyWith(
        counterValue: state.counterValue + 1,
        status: AppCartItemCounterStatus.changing));
    onInputDelayCallBack();
  }

  void _onRemoveItem(AppCartItemCounterRemoveEvent event,
      Emitter<AppCartItemCounterState> emit) {
    if (state.counterValue == 1) {
      _cancelCallBack();
      submitCallBack.onDeleteItem?.call();
      return;
    }

    emit(state.copyWith(
        counterValue: state.counterValue - 1,
        status: AppCartItemCounterStatus.changing));
    onInputDelayCallBack();
  }

  void _onValueChange(AppCartItemCounterValueChangeEvent event,
      Emitter<AppCartItemCounterState> emit) {
    _cancelCallBack();
    if (event.value == 0) {
      emit(
        state.copyWith(
          status: AppCartItemCounterStatus.initial,
        ),
      );
      submitCallBack.onDeleteItem?.call();
      return;
    }
    emit(
      state.copyWith(
        counterValue: event.value,
        status: AppCartItemCounterStatus.submit,
      ),
    );
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }

  FutureOr<void> _onSubmitValue(AppCartItemCounterSubmitValueEvent event,
      Emitter<AppCartItemCounterState> emit) {
    emit(state.copyWith(status: AppCartItemCounterStatus.submit));
  }
}
