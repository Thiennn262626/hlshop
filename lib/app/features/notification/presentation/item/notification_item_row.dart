import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:hlshop/app/features/notification/core/service/notification_utils.dart';
import 'package:hlshop/app/features/notification/data/model/notification_model.dart';
import 'package:hlshop/app/features/notification/presentation/detail/cubit/notification_detail_cubit.dart';

class NotificationItemRow extends StatelessWidget {
  const NotificationItemRow({super.key, required this.item});

  final NotificationDetailModel item;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationDetailCubit(
        item: item,
      ),
      child: Builder(builder: (context) {
        return BlocConsumer<NotificationDetailCubit, NotificationDetailState>(
          listener: _onStateChanged,
          builder: (context, state) {
            final item = state.item;
            return CardCupertinoEffect(
              onPressed: () {
                _onClick(context);
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.logo_dev).p8(),
                    ),
                  ).expand(),
                  Gaps.hGap8,
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          item.title?.text.semiBold.make().expand() ??
                              const Spacer(),
                          item.createdDate
                                  ?.toTimeAgo()
                                  ?.text
                                  .maxLines(3)
                                  .ellipsis
                                  .textS
                                  .colorHint(context)
                                  .make()
                                  .pl8() ??
                              const SizedBox.shrink(),
                        ],
                      ),
                      Gaps.vGap4,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          item.content?.text
                                  .maxLines(2)
                                  .ellipsis
                                  .make()
                                  .expand() ??
                              const Spacer(),
                          if (item.hasRead != true)
                            ContainerCircle(
                              color: context.theme.primaryColor,
                              size: 12,
                            ).p2()
                        ],
                      ),
                      Gaps.divider.py12(),
                    ],
                  ).flex(flex: 5)
                ],
              ).minHeight(Dimens.minRowHeight),
            );
          },
        );
      }),
    );
  }

  Future<void> _onClick(BuildContext context) async {
    context.read<NotificationDetailCubit>().markAsRead();
    if (item != null) {
      final navigateToPage = await NotificationUtils.navigateToPage(
        router: context.router,
        data: item,
        currentUser: context.read<AuthBloc>().user,
      );
      if (navigateToPage == true) {
        return;
      }
    }
    await context.pushRoute(
      NotificationDetailRoute(
        item: item,
      ),
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
