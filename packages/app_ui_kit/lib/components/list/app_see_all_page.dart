import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/app_bar/app_app_bar.dart';
import 'package:app_ui_kit/components/paging/app_paging_controller.dart';
import 'package:app_ui_kit/components/paging/paging_list.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class AppSeeAllPage extends StatelessWidget {
  const AppSeeAllPage({
    Key? key,
    required this.title,
    required this.fetchListData,
    required this.itemBuilder,
    this.separatorBuilder,
    this.pagingController,
    this.padding,
  }) : super(key: key);

  final String title;
  final Future<List<dynamic>> Function(int page, int pageSize) fetchListData;
  final ItemWidgetBuilder<dynamic> itemBuilder;
  final IndexedWidgetBuilder? separatorBuilder;
  final AppPagingController<int, dynamic>? pagingController;

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: title,
      ),
      body: SafeArea(
        bottom: false,
        child: PagingList(
          pagingController: pagingController,
          padding: padding,
          itemBuilder: itemBuilder,
          fetchListData: fetchListData,
          separatorBuilder: separatorBuilder,
        ),
      ),
    );
  }
}
