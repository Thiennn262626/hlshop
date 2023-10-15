import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

extension ExceptionHandlerConfigExtension on BuildContext {
  ExceptionHandler get exceptionHandler => ExceptionHandlerConfig.of(this);

  String? getAppErrorMsg(Object? e) {
    return exceptionHandler.getErrorMessage(e);
  }
}

class ExceptionHandler {
  ExceptionHandler({
    required this.context,
  });

  BuildContext context;

  String getErrorMessage(Object? error) {
    return '$error';
  }
}

class ExceptionHandlerConfig extends InheritedWidget {
  const ExceptionHandlerConfig({
    super.key,
    required this.handler,
    required super.child,
  });

  final ExceptionHandler handler;

  static ExceptionHandler of(BuildContext context) {
    final configWidget = context.dependOnInheritedWidgetOfExactType<ExceptionHandlerConfig>();
    return configWidget?.handler ?? ExceptionHandler(context: context);
  }

  @override
  bool updateShouldNotify(covariant ExceptionHandlerConfig oldWidget) {
    return handler != oldWidget.handler;
  }
}
