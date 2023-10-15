import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class TabRounded extends StatefulWidget {
  const TabRounded({
    super.key,
    required this.label,
    required this.isSelected,
    required this.index,
  });

  final String? label;
  final bool isSelected;
  final int index;

  @override
  State<TabRounded> createState() => _TabRoundedState();
}

class _TabRoundedState extends State<TabRounded> {
  @override
  Widget build(BuildContext context) {
    final gray = context.theme.hintColor;
    final primaryColor = context.theme.primaryColor;

    return Container(
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: widget.isSelected ? primaryColor : context.theme.hintColor,
          width: 1,
        ),
        color: widget.isSelected ? primaryColor : Colors.transparent,
      ),
      child: widget.label?.text
              .color(
                widget.isSelected ? context.theme.onPrimary() : gray,
              )
              .bold
              .textS
              .maxLines(2)
              .center
              .make()
              .px12()
              .objectCenter() ??
          const SizedBox.shrink(),
    );
  }
}
