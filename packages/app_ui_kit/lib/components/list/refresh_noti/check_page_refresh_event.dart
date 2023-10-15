import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/list/refresh_noti/page_refresh_cubit.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class CheckPageRefreshEvent extends StatelessWidget {
  const CheckPageRefreshEvent({super.key, required this.child, this.controller});

  final PagingController? controller;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final refreshCubit = context.read<PageRefreshCubit?>();
    if (refreshCubit != null && controller != null) {
      return BlocListener<PageRefreshCubit, int?>(
        listenWhen: (previous, current) => previous != current,
        listener: (context, state) {
          controller?.refresh();
        },
        child: child,
      );
    }
    return child;
  }
}
