import 'package:hlshop/all_file/all_file.dart';

class InfoPaymentTile extends StatelessWidget {
  const InfoPaymentTile({super.key, required this.label, required this.title});

  final String label;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label.text.medium.make(),
        title.text.bold.make(),
      ].withDivider(Gaps.vGap8),
    ).py16();
  }
}
