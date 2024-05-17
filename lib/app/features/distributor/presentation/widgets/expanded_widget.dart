import 'package:hlshop/all_file/all_file.dart';

class ExpandedWidget extends StatefulWidget {
  const ExpandedWidget({
    super.key,
    this.expand = false,
    required this.child,
    this.animateFirstRender = false,
    this.onCollapsed,
    this.onExpanded,
    this.axis,
    this.animationDuration,
  });

  final Widget child;
  final bool expand;
  final bool animateFirstRender;
  final Axis? axis;

  final Duration? animationDuration;

  final VoidCallback? onCollapsed;
  final VoidCallback? onExpanded;

  @override
  _ExpandedWidgetState createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> with SingleTickerProviderStateMixin {
  AnimationController? expandController;
  Animation<double>? animation;

  @override
  void initState() {
    super.initState();
    prepareAnimations();
    if (widget.animateFirstRender) {
      _runExpandCheck();
    } else {
      expandController?.value = widget.expand ? 1 : 0;
    }
  }

  ///Setting up the animation
  void prepareAnimations() {
    expandController = AnimationController(
      value: 0,
      vsync: this,
      duration: widget.animationDuration ?? const Duration(milliseconds: 500),
    );

    if (expandController != null) {
      animation = CurvedAnimation(
        parent: expandController!,
        curve: Curves.fastOutSlowIn,
      );
    }
  }

  void notifyEvent() {
    if (widget.expand && widget.onExpanded != null) {
      widget.onExpanded!();
    } else if (!widget.expand && widget.onCollapsed != null) {
      widget.onCollapsed!();
    }
  }

  void _runExpandCheck() {
    if (widget.expand) {
      expandController?.forward().then((value) {
        notifyEvent();
      });
    } else {
      expandController?.reverse().then((value) {
        notifyEvent();
      });
    }
  }

  @override
  void didUpdateWidget(ExpandedWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    _runExpandCheck();
  }

  @override
  void dispose() {
    expandController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      axisAlignment: 1,
      axis: widget.axis ?? Axis.vertical,
      sizeFactor: animation ??
          CurvedAnimation(
            parent: expandController!,
            curve: Curves.fastOutSlowIn,
          ),
      child: widget.child,
    );
  }
}
