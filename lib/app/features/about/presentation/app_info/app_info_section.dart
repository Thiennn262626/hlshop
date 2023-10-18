import 'package:hlshop/all_file/all_file.dart';

class AppInfoSection extends StatelessWidget {
  const AppInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSettingTile(
          iconData: PhosphorIcons.shield,
          title: 'Chính sách bảo mật'.tr(),
          onPressed: () {},
        ),
        AppSettingTile(
          iconData: PhosphorIcons.file_text,
          title: 'Điều khoản dịch vụ'.tr(),
          onPressed: () {},
        ),
      ].withDivider(const AppDivider.thin().pxDefault()),
    );
  }
}
