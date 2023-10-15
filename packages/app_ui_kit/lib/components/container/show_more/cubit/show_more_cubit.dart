import 'package:bloc/bloc.dart';

class ShowMoreCubit extends Cubit<bool> {
  ShowMoreCubit({bool? initialValue}) : super(initialValue ?? false);

  void toggle() => emit(!state);
}
