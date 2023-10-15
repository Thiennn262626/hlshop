import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/notification/data/model/notification_model.dart';
import 'package:hlshop/app/features/notification/data/repo/notification_repo.dart';
import 'package:hlshop/app/features/notification/presentation/item/notification_item_row.dart';
import 'package:hlshop/app/features/notification/presentation/main/cubit/notification_main_cubit.dart';

class NotificationMainBody extends StatefulWidget {
  const NotificationMainBody({super.key});

  @override
  State<NotificationMainBody> createState() => _NotificationMainBodyState();
}

class _NotificationMainBodyState extends State<NotificationMainBody> {
  // page controller
  final AppPagingController<int, NotificationDetailModel> _pagingController =
      AppPagingController(firstPageKey: 0);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<NotificationMainCubit, NotificationMainState>(
          listenWhen: (previous, current) =>
              previous.updateItem != current.updateItem,
          listener: (context, state) {
            // _pagingController.updateItem(
            //   item: state.updateItem,
            //   checkFunction: (oldItem, item) => oldItem?.messageID == item?.messageID,
            // );
          },
        ),
        BlocListener<NotificationMainCubit, NotificationMainState>(
          listenWhen: (previous, current) => previous.hasNew != current.hasNew,
          listener: (context, state) {
            _pagingController.refreshSilent();
          },
        ),
      ],
      child: PagingList<NotificationDetailModel>(
        pagingController: _pagingController,
        padding: Dimens.edgePage(context),
        itemBuilder: (context, item, index) {
          return NotificationItemRow(
            key: ObjectKey(item),
            item: item,
          );
        },
        fetchListData: (offset, limit) async {
          final rs = await getIt<NotificationRepo>().getNotificationList(
            offset: offset,
            limit: limit,
          );
          return [];
        },
      ),
    );
  }
}
