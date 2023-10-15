import 'package:hlshop/all_file/all_file.dart';

class AppCartItemCounterCallBack {
  const AppCartItemCounterCallBack({
    this.onValueChange,
    this.onAdd,
    this.onRemove,
  });

  final ValueChanged<int>? onValueChange;
  final VoidCallback? onAdd;
  final VoidCallback? onRemove;
}

class AppCartItemCounterSubmitCallBack {
  const AppCartItemCounterSubmitCallBack({
    this.onValueSubmit,
    this.onDeleteItem,
  });

  final ValueChanged<int>? onValueSubmit;
  final VoidCallback? onDeleteItem;
}
