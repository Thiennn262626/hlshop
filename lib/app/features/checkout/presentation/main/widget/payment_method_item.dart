import 'package:hlshop/all_file/all_file.dart';

class PaymentMethodItem extends StatefulWidget {
  const PaymentMethodItem(
      {super.key,
      required this.paymentMethod,
      required this.index,
      this.title,
      this.icon});
  final int paymentMethod;
  final int index;
  final String? title;
  //
  final Widget? icon;
  @override
  State<PaymentMethodItem> createState() => _PaymentMethodItemState();
}

class _PaymentMethodItemState extends State<PaymentMethodItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.pop(widget.index);
      },
      child: Row(
        children: [
          AbsorbPointer(
            child: Radio<int?>(
              value: widget.index,
              groupValue: widget.paymentMethod,
              onChanged: (value) {
                print(value);
              },
            ),
          ),
          if (widget.icon != null) widget.icon!.px10(),
          if (widget.title != null)
            widget.title!.text.semiBold.colorDark(context).make(),
        ],
      ),
    );
  }
}
