import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/paging/paging_state_widget.dart';
import 'package:flutter/cupertino.dart';

typedef PagingErrorBuilder = Widget Function(BuildContext context, dynamic error);
typedef PagingEmptyBuilder = Widget Function(BuildContext context);

extension PagingConfigDataExtension on BuildContext {
  PagingConfigData get pagingConfigData => PagingConfiguration.of(this);
}

class PagingConfigData {
  PagingConfigData({
    IndexedWidgetBuilder? separatorBuilder,
    WidgetBuilder? progressIndicatorBuilder,
    PagingErrorBuilder? errorBuilder,
    PagingEmptyBuilder? emptyBuilder,
  }) {
    this.separatorBuilder = separatorBuilder ??
        (context, index) => const SizedBox(
              height: 10,
              width: 10,
            );
    this.progressIndicatorBuilder = progressIndicatorBuilder ?? (context) => const CupertinoActivityIndicator();
    this.errorBuilder = errorBuilder ?? (context, error) => PageErrorNotify(error: error);
    this.emptyBuilder = emptyBuilder ?? (context) => const PageEmptyNotify();
  }

  late final IndexedWidgetBuilder separatorBuilder;
  late final WidgetBuilder progressIndicatorBuilder;
  late final PagingErrorBuilder errorBuilder;
  late final PagingEmptyBuilder emptyBuilder;
}

class PagingConfiguration extends InheritedWidget {
  const PagingConfiguration({
    super.key,
    required this.configData,
    required super.child,
  });

  final PagingConfigData configData;

  static PagingConfigData of(BuildContext context) {
    final configWidget = context.dependOnInheritedWidgetOfExactType<PagingConfiguration>();
    return configWidget?.configData ?? PagingConfigData();
  }

  @override
  bool updateShouldNotify(covariant PagingConfiguration oldWidget) {
    return configData != oldWidget.configData;
  }
}
