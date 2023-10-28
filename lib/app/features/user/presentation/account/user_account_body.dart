import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/about/self.dart';
import 'package:hlshop/app/features/user/presentation/bloc/user_bloc.dart';
import 'package:hlshop/app/features/user/self.dart';

class UserAccountBody extends StatelessWidget {
  const UserAccountBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody.withSpacing(
      child: Column(
        children: [
          BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state.userEntity != null) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    BlocBuilder<UserBloc, UserState>(
                      builder: (context, state) {
                        return UserSimpleInfo(
                          user: state.userEntity,
                          subTitle: 'Xem trang cá nhân'.tr(),
                          onPressed: () async {
                            await context.pushRoute(
                              UserInfoRoute(
                                user: state.userEntity!,
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ].withDivider(Gaps.vGap16),
                );
              }

              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  UserSimpleInfo(
                    user: state.userEntity,
                    onPressed: () {
                      context.router.push(const LoginRoute());
                    },
                  ),
                ].withDivider(Gaps.vGap16),
              );
            },
          ).pxDefault(),
          Gaps.vGap16,
          const AppDivider(),
          const AppInfoSection(),
        ],
      ),
    );
  }
}
