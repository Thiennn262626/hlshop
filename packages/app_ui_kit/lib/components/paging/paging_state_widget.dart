import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class PageErrorNotify extends StatelessWidget {
  const PageErrorNotify({super.key, this.error});

  final Object? error;

  @override
  Widget build(BuildContext context) {
    log('PageErrorNotify: $error', error: error);
    return '$error'.text.make().pDefault().centered();
  }
}

class PageEmptyNotify extends StatelessWidget {
  const PageEmptyNotify({super.key, this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return (message ?? '').text.make().pDefault().centered();
  }
}

class ContentNotFound extends StatelessWidget {
  const ContentNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return 'ContentNotFound'.text.make().pDefault().centered();
  }
}
