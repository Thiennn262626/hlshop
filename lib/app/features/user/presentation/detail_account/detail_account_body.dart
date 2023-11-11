import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/presentation/bloc/user_bloc.dart';
import 'package:hlshop/app/features/user/presentation/detail_account/widget/app_info_account_tile.dart';

class ReceiveDetailAccountBody extends StatelessWidget {
  const ReceiveDetailAccountBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody(
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          final user = state.userEntity;
          return Column(
            children: [
              AppDetailAccountTile(
                title: 'Tên người dùng'.tr(),
                onPressed: () async {
                  if (user == null) {
                    return;
                  }
                  await context.pushRoute(
                    UserAccountInfoRoute(
                      user: user,
                    ),
                  );
                },
              ),
              AppDetailAccountTile(
                title: 'Số điện thoại'.tr(),
                num: user?.phoneList?.length,
                onPressed: () {
                  context.pushRoute(const UserPhoneInfoRoute());
                },
              ),
              AppDetailAccountTile(
                title: 'Email'.tr(),
                num: user?.emailList?.length,
                onPressed: () {
                  context.pushRoute(
                    const UserEmailInfoRoute(),
                  );
                },
              ),
            ].withDivider(const AppDivider.thin().pxDefault()),
          );
        },
      ),
    );
  }
}
