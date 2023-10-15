import 'dart:async';

import 'package:hlshop/all_file/all_file.dart';

import '../../../auth/presentation/bloc/auth_bloc.dart';

class AppNavigationEventRepo {
  final _navBarController = StreamController<int>.broadcast();

  Stream<int> get homeActiveTab => _navBarController.stream;

  void setSomeActiveTab(int value) => _navBarController.add(value);

  void checkLoginAction(BuildContext context, int index) {
    if (index == 1) {
      context.read<AuthBloc>().checkLoginAction(
        context,
        onLogin: (user) {
          return context.pushRoute(
            const UserOrderRoute(),
          );
        },
      );
    }
  }

  void close() {
    _navBarController.close();
  }
}
