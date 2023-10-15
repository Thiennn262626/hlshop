import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:hlshop/app/features/user/domain/entity/user_base_entity.dart';
import 'package:hlshop/app/features/user/presentation/detail_account/cubit/detail_account_cubit.dart';
import 'package:hlshop/app/features/user/presentation/detail_account/detail_account_body.dart';

@RoutePage()
class ReceiveDetailAccountPage extends StatelessWidget {
  const ReceiveDetailAccountPage({
    super.key,
    required this.user,
  });

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is UnAuthenticatedState) {
          context.router.pop();
        }
      },
      child: BlocProvider(
        create: (context) => DetailAccountCubit(
          item: user,
        ),
        child: ApiItemConsumer<DetailAccountCubit, DetailAccountState>(
          getStatus: (state) => state.status,
          child: Scaffold(
            appBar: AppAppBar(
              title: 'Tài khoản'.tr(),
              args: AppBarArgs(
                elevation: 0,
              ),
            ),
            body: DetailAccountBody(
              user: user,
            ),
          ),
        ),
      ),
    );
  }
}
