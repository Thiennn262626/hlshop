import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:flutter/material.dart';

class SizeProviderWidget extends StatefulWidget {
  const SizeProviderWidget({
    super.key,
    required this.onChildSize,
    required this.child,
  });

  final Widget child;
  final void Function(Size s) onChildSize;

  @override
  _SizeProviderWidgetState createState() => _SizeProviderWidgetState();
}

class _SizeProviderWidgetState extends State<SizeProviderWidget> {
  @override
  void initState() {
    _onResize();
    super.initState();
  }

  void _onResize() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (context.size is Size) {
        widget.onChildSize(context.size!);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    ///add size listener for every build uncomment the fallowing
    ///_onResize();
    return widget.child;
  }
}

class AppMargin extends StatefulWidget {
  const AppMargin({
    super.key,
    required this.child,
    this.horizontal = 0,
    this.vertical = 0,
    this.left = 0,
    this.top = 0,
  });

  final Widget child;
  final double horizontal;
  final double vertical;
  final double top;
  final double left;

  @override
  State<AppMargin> createState() => _AppMarginState();
}

class _AppMarginState extends State<AppMargin> {
  Size childSize = Size.zero;

  @override
  Widget build(BuildContext context) {
    final horizontalMargin = widget.horizontal * 2 * -1;
    final verticalMargin = widget.vertical * 2 * -1;

    final newWidth = childSize.width + horizontalMargin;
    final newHeight = childSize.height + verticalMargin;

    if (childSize != Size.zero) {
      return LimitedBox(
        maxWidth: newWidth,
        maxHeight: newHeight,
        child: OverflowBox(
          maxWidth: newWidth,
          maxHeight: newHeight,
          child: Transform.translate(
            offset: Offset(widget.left, widget.top),
            child: SizedBox(
              width: newWidth,
              height: newHeight,
              child: widget.child,
            ),
          ),
        ),
      );
    }

    return SizeProviderWidget(
      child: widget.child,
      onChildSize: (size) {
        setState(() => childSize = size);
      },
    );
  }
}
