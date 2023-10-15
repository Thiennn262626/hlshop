import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class SelectItemCubit<T> extends Cubit<T?> {
  SelectItemCubit({
    required this.getItemID,
    this.initialItem,
  }) : super(initialItem);

  T? initialItem;
  String? Function(T? item) getItemID;

  bool isSelected(T? item) {
    if (item == null) {
      return state == null;
    }
    return getItemID(state) == getItemID(item);
  }

  void selectItem(T? item) {
    emit(item);
  }
}
