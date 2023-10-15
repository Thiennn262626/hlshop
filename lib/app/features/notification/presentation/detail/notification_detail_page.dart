import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/notification/data/model/notification_model.dart';
import 'package:hlshop/app/features/notification/presentation/detail/cubit/notification_detail_cubit.dart';
import 'package:hlshop/app/features/notification/presentation/detail/notification_detail_body.dart';

@RoutePage()
class NotificationDetailPage extends StatelessWidget {
  const NotificationDetailPage({super.key, required this.item});

  final NotificationDetailModel item;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationDetailCubit(
        item: item,
      )
        ..fetchItem()
        ..markAsRead(),
      child: Builder(builder: (context) {
        return BlocListener<NotificationDetailCubit, NotificationDetailState>(
          listener: _onStateChanged,
          child: Scaffold(
            appBar: AppAppBar(
              title: 'notification'.tr(),
            ),
            body: const _PageBodyLoading(
              body: NotificationDetailBody(),
            ),
          ),
        );
      }),
    );
  }

  void _onStateChanged(BuildContext context, NotificationDetailState state) {
    if (state.status == ItemStatus.error) {
      DialogUtils.showErrorDialog(
        context: context,
        content: context.getAppErrorMsg(state.error),
        error: state.error,
      );
    }
  }
}

class _PageBodyLoading extends StatelessWidget {
  const _PageBodyLoading({Key? key, required this.body}) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationDetailCubit, NotificationDetailState>(
      builder: (context, state) {
        if (state.status == ItemStatus.error) {
          return AppErrorSimple(
            errorMsg: context.getAppErrorMsg(state.error) ?? '',
          );
        } else if (state.status == ItemStatus.initial ||
            state.status == ItemStatus.loading) {
          return const AppLoadingIndicator();
        }

        return body;
      },
    );
  }
}
