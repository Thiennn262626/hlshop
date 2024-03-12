import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/presentation/address/crud_address/crud_address_body.dart';

enum CrudAddressType {
  add,
  edit,
}

@RoutePage()
class CrudAddressPage extends StatelessWidget {
  const CrudAddressPage({
    super.key,
    this.initialAddress,
    this.type = CrudAddressType.add,
  });

  final UserAddressEntity? initialAddress;
  final CrudAddressType type;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CrudAddressCubit(
        initAddress: initialAddress,
        type: type,
      ),
      child: Builder(
        builder: (context) {
          return ReactiveForm(
            formGroup: context.read<CrudAddressCubit>().form,
            child: ApiItemConsumer<CrudAddressCubit, CrudAddressState>(
              getStatus: (state) => state.status,
              onDone: (state) {
                _showSuccessDialog(context);
              },
              child: Scaffold(
                appBar: AppAppBar(
                  title: _getTitle(),
                ),
                bottomNavigationBar: AppBottomBar(
                  child: AppButton(
                    label: _getTitle().tr(),
                    isSubmitButton: true,
                    onPressed: () {
                      if (type == CrudAddressType.add) {
                        context.read<CrudAddressCubit>().addAddress();
                      }

                      if (type == CrudAddressType.edit) {
                        context.read<CrudAddressCubit>().updateAddress();
                      }
                    },
                  ),
                ),
                body: const CrudAddressBody(),
              ),
            ),
          );
        },
      ),
    );
  }

  void _showSuccessDialog(BuildContext context) {
    final isEdit = context.read<CrudAddressCubit>().isEdit;
    DialogUtils.showSuccessDialog(
      context: context,
      content: isEdit == false
          ? 'Bạn đã thêm dịa chỉ thành công'.tr()
          : 'Bạn đã cập nhập địa chỉ thành công'.tr(),
      onAutoDismiss: () {
        context.router.pop(true);
      },
    );
  }

  String _getTitle() {
    if (type == CrudAddressType.add) {
      return 'Thêm địa chỉ'.tr();
    } else if (type == CrudAddressType.edit) {
      return 'Sửa địa chỉ'.tr();
    }
    return 'Địa chỉ'.tr();
  }
}
