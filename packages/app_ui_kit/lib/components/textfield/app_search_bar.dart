import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:flutter/cupertino.dart';

import 'app_text_field.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
    this.controller,
    this.onChanged,
    this.decoration,
  });

  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  final InputDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      controller: controller,
      onChanged: onChanged,
      decoration: (decoration ?? AppTextFieldTheme.primary(context)).copyWith(
        prefixIcon: const Icon(
          CupertinoIcons.search,
        ),
      ),
    );
  }
}
