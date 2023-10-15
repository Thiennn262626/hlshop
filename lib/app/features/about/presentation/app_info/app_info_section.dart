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
        AppSettingTile(
          iconData: PhosphorIcons.question,
          title: 'Trợ giúp & hỗ trợ'.tr(),
          onPressed: () {},
        ),
        AppSettingTile(
          iconData: PhosphorIcons.stack,
          title: 'Phiên bản ứng dụng'.tr(),
          onPressed: () {},
        ),
        AppSettingTile(
          iconData: PhosphorIcons.info,
          title: 'Về MulStore'.tr(),
          onPressed: () {},
        ),
      ].withDivider(const AppDivider.thin().pxDefault()),
    );
  }
}
