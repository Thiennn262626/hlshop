import 'package:bloc/bloc.dart';

class PageRefreshCubit extends Cubit<int?> {
  PageRefreshCubit() : super(null);

  void refresh() {
    emit((state ?? 0) + 1);
  }
}
