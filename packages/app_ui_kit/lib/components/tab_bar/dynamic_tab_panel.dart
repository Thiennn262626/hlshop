import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/tab_bar/app_tab_bar.dart';
import 'package:expandable_page_view/expandable_page_view.dart';

class DynamicTabPanel extends StatefulWidget {
  const DynamicTabPanel({
    super.key,
    required this.listItem,
    this.contentPaddingBuilder,
    this.padding,
  });

  final List<DynamicTabPanelData> listItem;
  final EdgeInsetsGeometry? padding;

  final EdgeInsets Function(dynamic context, dynamic index)? contentPaddingBuilder;

  @override
  State<DynamicTabPanel> createState() => _DynamicTabPanelState();
}

class _DynamicTabPanelState extends State<DynamicTabPanel> {
  final controller = PageController(keepPage: false);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: widget.listItem.length,
      child: Builder(
        builder: (context) {
          final tabList = widget.listItem.mapAsList((item) => item.title).mapAsListIndexed(
                (item, index) => Tab(
                  text: item,
                  height: context.theme.buttonTheme.height,
                ),
              );
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTabBar(
                padding: widget.padding,
                tabs: tabList,
                onTap: _onTab,
              ),
              Gaps.vGap16,
              ExpandablePageView.builder(
                padEnds: false,
                onPageChanged: (index) {
                  DefaultTabController.of(context).animateTo(index);
                },
                controller: controller,
                itemCount: widget.listItem.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: widget.contentPaddingBuilder?.call(context, index) ?? EdgeInsets.zero,
                    child: widget.listItem.mapAsList((item) => item.child).getOrNull(index) ?? const SizedBox.shrink(),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }

  void _onTab(int index) {
    controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}

class DynamicTabPanelData {
  const DynamicTabPanelData({
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;
}
