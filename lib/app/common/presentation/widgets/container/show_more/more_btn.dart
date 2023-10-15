import 'package:hlshop/all_file/all_file.dart';

class AppMoreBtn extends StatelessWidget {
  const AppMoreBtn({
    super.key,
    required this.onPressed,
    required this.isMore,
    this.buttonPadding,
  });

  final VoidCallback onPressed;
  final bool isMore;
  final EdgeInsets? buttonPadding;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gaps.vGap12,
        const Divider(
          indent: 0,
          height: 1,
        ),
        Gaps.vGap16,
        AppButtonText(
          padding: buttonPadding ?? EdgeInsets.zero,
          onPressed: onPressed,
          label: isMore
              ? LocaleKeys.common_ReadLess.tr()
              : LocaleKeys.common_ReadMore.tr(),
        )
      ],
    );
  }
}
