import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/core/utils/image_utils.dart';

class UserInfoBody extends StatelessWidget {
  const UserInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody.withSpacing(
      child: Column(
        children: [
          Column(
            children: [
              BlocBuilder<UserBloc, UserState>(
                builder: (context, state) {
                  if (state.userEntity == null) {
                    return const SizedBox.shrink();
                  }
                  return UserHeader(
                    user: state.userEntity!,
                  ).cornerRadius(Dimens.rad).pxDefault();
                },
              ),
              Gaps.vGap12,
              BlocBuilder<UserBloc, UserState>(
                builder: (context, state) {
                  return state.userEntity?.fullName?.text
                          .titleLarge(context)
                          .make() ??
                      const SizedBox.shrink();
                },
              ),
              Gaps.vGap12,
              'Hạng kim cương'
                  .tr()
                  .text
                  .center
                  .colorPrimary(context)
                  .make()
                  .px12()
                  .py6()
                  .backgroundColor(
                    context.themeColor.primaryLighter,
                  )
                  .cornerRadius(Dimens.rad_XL2),
              Gaps.vGap12,
              const AppDivider(),
              BlocBuilder<UserBloc, UserState>(
                builder: (context, state) {
                  final user = state.userEntity;
                  if (user == null) {
                    return const SizedBox.shrink();
                  }
                  return Column(
                    children: [
                      AppTileText(
                        leading: const Icon(
                          PhosphorIcons.info,
                          color: Colors.blue,
                        ),
                        title: 'Tài khoản'.tr(),
                        onPressed: () async {
                          await context.pushRoute(
                            ReceiveDetailAccountRoute(
                              user: user,
                            ),
                          );
                        },
                      ),
                      AppTileText(
                        leading: const Icon(
                          PhosphorIcons.map_pin,
                          color: Colors.green,
                        ),
                        title: 'Địa chỉ nhận hàng'.tr(),
                        onPressed: () async {
                          await context.pushRoute(
                            ReceiveAddressRoute(
                              user: user,
                              canSelectPrimary: false,
                            ),
                          );
                        },
                      ),
                    ]
                        .mapAsList((item) => item.minHeight(52))
                        .withDivider(const AppDivider.thin()),
                  );
                },
              ),
              const AppDivider(),
              Column(
                children: [
                  AppTileText(
                    leading: const Icon(
                      PhosphorIcons.heart_fill,
                      color: Colors.red,
                    ),
                    title: 'Yêu thích'.tr(),
                    onPressed: () {
                      context.pushRoute(
                        const UserFavoriteProductRoute(),
                      );
                    },
                  ),
                  AppTileText(
                    leading: const Icon(
                      PhosphorIcons.star_fill,
                      color: Color(0xFFF9B83B),
                    ),
                    title: 'Đánh giá của bạn'.tr(),
                    onPressed: () {
                      context.pushRoute(
                        const UserRatingViewRoute(),
                      );
                    },
                  ),
                ]
                    .mapAsList((item) => item.minHeight(52))
                    .withDivider(const AppDivider.thin()),
              ),
            ].filterNotNullList(),
          ),
          const AppDivider(),
          AppButtonText(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  PhosphorIcons.sign_out,
                  color: context.themeColor.error,
                ),
                'Đăng xuất'.tr().text.colorDark(context).make(),
              ].withDivider(Gaps.hGap8),
            ).py32(),
            onPressed: () {
              DialogUtils.showMaterialDialog(
                context: context,
                content: 'Bạn có chắc chắn muốn đăng xuất?'.tr(),
                positive: () {
                  context.read<AuthBloc>().add(const AuthEvent.signOut());
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class UserHeader extends StatelessWidget {
  const UserHeader({super.key, required this.user});

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    const avatarSize = 120.0;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                AspectRatio(
                  aspectRatio: 343 / 138,
                  child: AppImg(
                    user.userCover ?? user.coverImg,
                    fit: BoxFit.cover,
                  ),
                ),
                BtnCamera(
                  onPressed: () async {
                    final pickedFile = await ImageUtils.getImageFromLibrary(
                        ImagePicker(), context);
                    if (pickedFile != null) {
                      context.read<UserBloc>().add(
                            UserEvent.updateCover(
                              file: File(
                                pickedFile.path,
                              ),
                            ),
                          );
                    }
                  },
                ).p8(),
              ],
            ),
            const SizedBox(
              height: avatarSize / 2,
            )
          ],
        ),
        Padding(
          padding: Dimens.edge_x_default,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              AppAvatar(
                src: user.avatar ?? '',
                height: avatarSize,
                background: Colors.white,
                border: Border.all(
                  width: 4,
                  color: Colors.transparent,
                ),
              ),
              BtnCamera(
                onPressed: () async {
                  final pickedFile = await ImageUtils.getImageFromLibrary(
                      ImagePicker(), context);
                  if (pickedFile != null) {
                    context.read<UserBloc>().add(
                          UserEvent.updateAvatar(
                            file: File(
                              pickedFile.path,
                            ),
                          ),
                        );
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
