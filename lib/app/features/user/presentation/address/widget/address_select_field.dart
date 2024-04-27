import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:hlshop/all_file/all_file.dart';

class AddressSelectField<T> extends StatelessWidget {
  const AddressSelectField({
    super.key,
    this.title,
    this.hintText,
    this.searchListData,
    required this.itemToString,
    required this.formControlName,
    this.isDisable = false,
    this.showSearchBar,
  });

  final String? title;
  final String? hintText;
  final String formControlName;
  final String? Function(T?) itemToString;
  final Future<List<T>> Function(
    int offset,
    int limit,
    String search,
  )? searchListData;
  final bool isDisable;
  final bool? showSearchBar;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isDisable
          ? () {}
          : () async {
              final formControl = context.getControl<T>(formControlName);
              final item = await BottomSheetUtils.showMaterial<T>(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.sizeOf(context).height * 0.8,
                ),
                context: context,
                child: SelectItemPopup<T>(
                  showSearchBar: showSearchBar,
                  title: title ?? 'Chọn'.tr(),
                  searchListData: searchListData,
                  itemToString: itemToString,
                ),
              );
              if (item != null) {
                formControl?.value = item;
              }
            },
      child: IgnorePointer(
        child: ReactiveControlBuilder<T>(
          controlName: formControlName,
          builder: (child, control, value) {
            final itemStr = itemToString(value);
            return AppTextField(
              decoration: AppTextFieldTheme.primaryActiveHint(context).copyWith(
                hintText:
                    itemStr.isNotNullOrEmpty ? itemStr : (hintText ?? title),
                suffixIcon: Icon(
                  PhosphorIcons.caret_right,
                  size: 20,
                  color: context.theme.hintColor,
                ),
                fillColor: isDisable ? context.themeColor.divider : null,
                filled: isDisable,
              ),
            );
          },
        ),
      ),
    );
  }
}
