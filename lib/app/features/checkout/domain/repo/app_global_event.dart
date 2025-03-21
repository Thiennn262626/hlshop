import 'dart:async';

import 'package:hlshop/all_file/all_file.dart';

class AppNavigationEventRepo {
  final _navBarController = StreamController<int>.broadcast();

  Stream<int> get homeActiveTab => _navBarController.stream;

  void setSomeActiveTab(int value) => _navBarController.add(value);

  // void checkLoginAction(BuildContext context, int index) {
  //   if (index == 1) {
  //     context.read<UserBloc>().checkLoginAction(
  //       context,
  //       onLogin: (user) {
  //         return context.pushRoute(
  //           const UserOrderRoute(),
  //         );
  //       },
  //     );
  //   }
  // }

  void close() {
    _navBarController.close();
  }
}
