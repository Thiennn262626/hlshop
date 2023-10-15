import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

/// Author: Kyo Huu
/// Create date: 7/25/2020

/// Use Hero for Widget that's not Image

class TextHero extends StatelessWidget {
  final Widget? child;
  final String? tag;

  const TextHero({Key? key, required this.child, this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (child == null) {
      return const SizedBox.shrink();
    }
    return Hero(
      flightShuttleBuilder: _flightShuttleBuilder,
      tag: tag.isEmptyOrValue(UniqueKey()),
      child: child!,
    );
  }
}

Widget _flightShuttleBuilder(
  BuildContext flightContext,
  Animation<double> animation,
  HeroFlightDirection flightDirection,
  BuildContext fromHeroContext,
  BuildContext toHeroContext,
) {
  return DefaultTextStyle(
    style: DefaultTextStyle.of(toHeroContext).style,
    child: toHeroContext.widget,
  );
}
