import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/presentation/payment_method/user_payment_info/user_payment_info.dart';
import 'package:hlshop/app/features/user/self.dart';

@RoutePage()
class UserPaymentInfoPage extends StatelessWidget { 
  const UserPaymentInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserPaymentInfoCubit()..loadData(),
      child: Scaffold(
        appBar: AppAppBar(
          title: 'Tài Khoản Ngân Hàng'.tr(),
        ),
        body: const UserPaymentInfoBody(),
      ),
    );
  }
}
