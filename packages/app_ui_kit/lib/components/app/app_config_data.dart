import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:flutter/cupertino.dart';

extension AppConfigDataExtension on BuildContext {
  AppConfigData get appConfig => AppConfiguration.of(this);

  String tr(String key) {
    return appConfig.translate?.call(key) ?? key;
  }
}

class AppConfigData {
  AppConfigData({
    String Function(String)? translate,
  }) {
    this.translate = translate;
  }

  late final String Function(String)? translate;
}

class AppConfiguration extends InheritedWidget {
  const AppConfiguration({
    super.key,
    required this.configData,
    required super.child,
  });

  final AppConfigData configData;

  static AppConfigData of(BuildContext context) {
    final configWidget =
        context.dependOnInheritedWidgetOfExactType<AppConfiguration>();
    return configWidget?.configData ?? AppConfigData();
  }

  @override
  bool updateShouldNotify(covariant AppConfiguration oldWidget) {
    return configData != oldWidget.configData;
  }
}
