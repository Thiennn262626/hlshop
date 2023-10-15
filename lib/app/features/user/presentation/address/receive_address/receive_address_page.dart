import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/common/presentation/widgets/status/api_result_consumer.dart';
import 'package:hlshop/app/features/user/domain/entity/user_base_entity.dart';
import 'package:hlshop/app/features/user/presentation/address/receive_address/cubit/receive_address_cubit.dart';
import 'package:hlshop/app/features/user/presentation/address/receive_address/receive_address_body.dart';

@RoutePage()
class ReceiveAddressPage extends StatelessWidget {
  const ReceiveAddressPage({
    super.key,
    required this.user,
    required this.canSelectPrimary,
    this.defaultAddress,
  });

  final UserEntity user;
  final bool canSelectPrimary;
  final String? defaultAddress;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReceiveAddressCubit(
        user: user,
      )..loadData(),
      child: Builder(
        builder: (context) {
          return ApiItemConsumer<ReceiveAddressCubit, ReceiveAddressState>(
            getStatus: (state) => state.status,
            onDone: (value) {
              if (canSelectPrimary) {
                context.router.pop(value);
              }
            },
            child: Scaffold(
              appBar: AppAppBar(
                title: 'Địa chỉ nhận hàng'.tr(),
              ),
              bottomNavigationBar: AppBottomBar(
                child: AppButton(
                  style: AppButtonTheme.ghost(context),
                  label: 'Thêm địa chỉ'.tr(),
                  onPressed: () async {
                    final cubit = context.read<ReceiveAddressCubit>();
                    final result = await context.pushRoute(
                      CrudAddressRoute(),
                    );
                    if (result == true) {
                      cubit.loadData();
                    }
                  },
                ),
              ),
              body: ReceiveAddressBody(
                defauAddress: defaultAddress,
                canSelectPrimary: canSelectPrimary,
              ),
            ),
          );
        },
      ),
    );
  }
}
