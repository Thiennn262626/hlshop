import 'package:app_utils/all_file/app_utils_all_file.dart';
import 'package:app_utils/data/collection_extend.dart';
import 'package:auto_route/auto_route.dart';

extension AutoRouteExtend on StackRouter {
  bool popToParentOf(List<String> routeNameList, {VoidCallback? onNotFound, bool reverse = false}) {
    var stackList = stack;
    if (reverse) {
      stackList = stack.reversed.toList();
    }

    var index = stackList.indexWhere((item) => routeNameList.find((itemRouteName) => item.routeData.name == itemRouteName) != null);

    var parentRoute = stackList.getOrNull(index - 1);
    var name = parentRoute?.routeData.name;

    if (name?.isNotEmpty ?? false) {
      popUntilRouteWithName(name!);
      return true;
    }

    if (onNotFound != null) {
      onNotFound();
      return false;
    }
    return false;
  }

  bool popToOf(List<String> routeNameList, {VoidCallback? onNotFound, bool reverse = false}) {
    var stackList = stack;

    if (reverse) {
      stackList = stack.reversed.toList();
    }
    var index = stackList.indexWhere((item) => routeNameList.find((itemRouteName) => item.routeData.name == itemRouteName) != null);

    var route = stackList.getOrNull(index);
    var name = route?.routeData.name;

    log('popToOf $name');

    if (!name.isNullOrEmpty) {
      popUntilRouteWithName(
        name!,
      );
      return true;
    }

    if (onNotFound != null) {
      onNotFound();
      return false;
    }
    return false;
  }
}
