import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class ShowMoreLayout extends StatelessWidget {
  const ShowMoreLayout({
    super.key,
    required this.moreBtnBuilder,
    this.height = 100,
    this.defaultShow = false,
    required this.child,
  });

  final Widget Function(bool isMore, VoidCallback onPressed) moreBtnBuilder;
  final double height;
  final bool defaultShow;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShowMoreLayoutBuilder(
      moreLayout: child,
      lessLayout: ConstrainedBox(
        constraints: BoxConstraints(minHeight: height),
        child: child,
      ),
      moreBtnBuilder: moreBtnBuilder,
      defaultShow: defaultShow,
    );
  }
}

class ShowMoreLayoutBuilder extends StatefulWidget {
  const ShowMoreLayoutBuilder({
    super.key,
    required this.moreLayout,
    required this.lessLayout,
    this.defaultShow = false,
    required this.moreBtnBuilder,
  });

  final Widget moreLayout;
  final Widget lessLayout;
  final Widget Function(bool isMore, VoidCallback onPressed) moreBtnBuilder;
  final bool defaultShow;

  @override
  ShowMoreLayoutBuilderState createState() => ShowMoreLayoutBuilderState();
}

class ShowMoreLayoutBuilderState extends State<ShowMoreLayoutBuilder> {
  bool _showMoreLD = false;

  @override
  void initState() {
    super.initState();
    _showMoreLD = widget.defaultShow;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final child = _showMoreLD ? widget.moreLayout : widget.lessLayout;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedSize(
          alignment: Alignment.topCenter,
          duration: const Duration(milliseconds: 300),
          child: child,
        ),
        widget.moreBtnBuilder(_showMoreLD, _toggle)
      ],
    );
  }

  void _toggle() {
    setState(() {
      _showMoreLD = !_showMoreLD;
    });
  }
}
