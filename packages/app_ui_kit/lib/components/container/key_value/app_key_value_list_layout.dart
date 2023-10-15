import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class AppKeyValueListLayout extends StatelessWidget {
  const AppKeyValueListLayout({
    super.key,
    this.children = const <Widget>[],
    this.separatorBuilder,
    this.crossAxisAlignment,
    this.showLastSeparator = false,
    this.mainAxisSize,
  });

  final List<Widget> children;
  final Widget Function(BuildContext context, int index)? separatorBuilder;
  final CrossAxisAlignment? crossAxisAlignment;
  final bool showLastSeparator;
  final MainAxisSize? mainAxisSize;

  @override
  Widget build(BuildContext context) {
    if (children.isNullOrEmpty) {
      return const SizedBox.shrink();
    }

    final listPair = <Widget>[];
    for (var i = 0; i < children.length; i += 2) {
      listPair.add(
        Row(
          crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
          children: [
            children.getOrNull(i) ?? const SizedBox.shrink(),
            children.getOrNull(i + 1) ?? const SizedBox.shrink(),
          ],
        ),
      );

      if (i == (children.length - 2)) {
        if (showLastSeparator) {
          listPair.add(
            separatorBuilder != null ? separatorBuilder!(context, i) : const SizedBox.shrink(),
          );
        }
      } else {
        listPair.add(
          separatorBuilder != null ? separatorBuilder!(context, i) : const SizedBox.shrink(),
        );
      }
    }

    return Column(
      mainAxisSize: mainAxisSize ?? MainAxisSize.max,
      children: listPair,
    );
  }
}

class AppKeyValueListLayoutBuilder<K, V> extends StatelessWidget {
  const AppKeyValueListLayoutBuilder({
    super.key,
    required this.children,
    required this.separatorBuilder,
    required this.keyBuilder,
    required this.valueBuilder,
    this.showLastSeparator,
    this.crossAxisAlignment,
    this.mainAxisSize,
  });

  final List<dynamic> children;
  final Widget Function(BuildContext context, int index) separatorBuilder;
  final Widget Function(BuildContext context, K item) keyBuilder;
  final Widget Function(BuildContext context, V item) valueBuilder;
  final bool? showLastSeparator;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisSize? mainAxisSize;

  @override
  Widget build(BuildContext context) {
    if (children.isNullOrEmpty) {
      return const SizedBox.shrink();
    }

    return AppKeyValueListLayout(
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      separatorBuilder: separatorBuilder,
      showLastSeparator: showLastSeparator ?? false,
      children: children.mapAsListIndexed((currentValue, index) {
        if (index % 2 != 0) {
          return valueBuilder(context, currentValue as V);
        }
        return keyBuilder(context, currentValue as K);
      }),
    );
  }
}

class AppKeyValueListLayoutBuilderIndex<K, V> extends StatelessWidget {
  const AppKeyValueListLayoutBuilderIndex({
    super.key,
    required this.children,
    required this.separatorBuilder,
    required this.keyBuilder,
    required this.valueBuilder,
    this.showLastSeparator,
  });

  final List<dynamic> children;
  final Widget Function(BuildContext context, int index) separatorBuilder;
  final Widget Function(BuildContext context, K item, int index) keyBuilder;
  final Widget Function(BuildContext context, V item, int index) valueBuilder;
  final bool? showLastSeparator;

  @override
  Widget build(BuildContext context) {
    if (children.isNullOrEmpty) {
      return const SizedBox.shrink();
    }

    return AppKeyValueListLayout(
      separatorBuilder: separatorBuilder,
      showLastSeparator: showLastSeparator ?? false,
      children: children.mapAsListIndexed((currentValue, index) {
        if (index % 2 != 0) {
          return valueBuilder(context, currentValue as V, index ~/ 2);
        }
        return keyBuilder(context, currentValue as K, index);
      }),
    );
  }
}
