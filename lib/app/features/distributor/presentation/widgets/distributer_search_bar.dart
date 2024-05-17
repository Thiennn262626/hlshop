import 'package:app_ui_kit/components/button/custom/btn_back.dart';
import 'package:hlshop/all_file/all_file.dart';

class DistributorSearch extends StatelessWidget {
  const DistributorSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const BtnBack(),
        SizedBox(
          height: 42,
          child: ColoredBox(
            color: Colors.white.withOpacity(0.2),
            child: AppTextField(
              decoration: AppTextFieldTheme.primary(
                context,
              ).copyWith(
                iconColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: Dimens.rad_border_circular,
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: Dimens.rad_border_circular,
                  borderSide: context.theme.inputDecorationTheme.focusedBorder
                          ?.borderSide ??
                      BorderSide.none,
                ),
                hintText: 'Tìm kiếm tại cửa hàng'.tr(),
                prefixIcon: const Icon(PhosphorIcons.magnifying_glass, color: Colors.white,),
                prefixIconConstraints: const BoxConstraints(
                  maxWidth: 62,
                  minWidth: 35,
                ),
              ),
            ),
          ).cornerRadius(Dimens.rad),
        ).expand(),
        Gaps.hGap4,
        const ShoppingCartBtn(),
        const AppButtonIcon(
          padding: Dimens.edge_XS3,
          icon: Icons.more_vert,
        ),
        Gaps.hGap8,
      ],
    );
  }
}
