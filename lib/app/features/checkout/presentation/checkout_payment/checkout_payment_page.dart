import 'package:hlshop/all_file/all_file.dart';

@RoutePage()
class CheckoutPaymentPage extends StatelessWidget {
  const CheckoutPaymentPage({
    super.key,
    required this.paymentMethod,
  });
  final int paymentMethod;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: 'Phương thức thanh toán'.tr(),
        args: const AppBarArgs(
          centerTitle: true,
        ),
      ),
      body: CheckoutPaymentBody(
        paymentMethod: paymentMethod,
      ),
    );
  }
}
