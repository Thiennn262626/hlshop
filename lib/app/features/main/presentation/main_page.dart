import 'package:hlshop/all_file/all_file.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _BlocListener(
      child: AutoTabsScaffold(
        routes: const [
          HomeRoute(),
          UserOrderRoute(),
          UserAccountRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return _HomeBottomBar(
            tabsRouter: tabsRouter,
          );
        },
      ),
    );
  }
}

class _HomeBottomBar extends StatelessWidget {
  const _HomeBottomBar({
    super.key,
    required this.tabsRouter,
    this.iconSize = Dimens.ic_S,
  });

  final TabsRouter tabsRouter;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return StreamListener<int>(
      stream: getIt<AppNavigationEventRepo>().homeActiveTab,
      onData: tabsRouter.setActiveIndex,
      child: BottomNavigationBar(
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
        selectedFontSize: FontSizeService().text,
        unselectedFontSize: FontSizeService().text,
        backgroundColor: context.theme.colorScheme.surface,
        items: [
          _buildBottomBarItem(
            context: context,
            icon: PhosphorIcons.house,
            activeIcon: PhosphorIcons.house_fill,
            label: 'Trang chủ'.tr(),
          ),
          _buildBottomBarItem(
            context: context,
            icon: AppIcon.order,
            activeIcon: AppIcon.order_fill,
            label: 'Đơn hàng'.tr(),
          ),
          _buildBottomBarItem(
            context: context,
            icon: PhosphorIcons.user,
            activeIcon: PhosphorIcons.user_fill,
            label: 'Tài Khoản'.tr(),
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildBottomBarItem({
    required BuildContext context,
    required String label,
    dynamic icon,
    dynamic activeIcon,
  }) {
    final iconW = _getIconWidget(context, icon);
    final activeIconW = _getIconWidget(context, activeIcon) ??
        _getIconWidget(context, icon, isActive: true);

    return BottomNavigationBarItem(
      icon: iconW ?? const SizedBox.shrink(),
      activeIcon: activeIconW,
      label: label,
    );
  }

  Widget? _getIconWidget(BuildContext context, dynamic icon,
      {bool isActive = false}) {
    if (icon == null) {
      return null;
    }
    if (icon is AssetGenImage) {
      return _getAssetImage(context, icon, isActive: isActive);
    } else if (icon is SvgGenImage) {
      return _getAssetSvg(context, icon, isActive: isActive);
    } else if (icon is IconData) {
      return getIconData(context, icon, isActive: isActive);
    } else if (icon is IconData) {
      return getIconData(context, icon, isActive: isActive);
    } else {
      return const SizedBox();
    }
  }

  Widget getIconData(
    BuildContext context,
    IconData data, {
    bool isActive = false,
  }) =>
      Icon(
        data,
        size: iconSize * 1.2,
      );

  Image _getAssetImage(
    BuildContext context,
    AssetGenImage asset, {
    bool isActive = false,
  }) =>
      asset.image(height: iconSize, width: iconSize);

  SvgPicture _getAssetSvg(
    BuildContext context,
    SvgGenImage asset, {
    bool isActive = false,
  }) =>
      asset.svg(
        height: iconSize,
        width: iconSize,
        color: isActive ? context.theme.primaryColor : const Color(0xFF6F6F6F),
      );
}

class TopIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _TopIndicatorBox();
  }
}

class _TopIndicatorBox extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 5
      ..isAntiAlias = true;

    canvas.drawLine(offset, Offset(cfg.size!.width + offset.dx, 0), paint);
  }
}

class _BlocListener extends StatelessWidget {
  const _BlocListener({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return _AuthListener(
      child: ShoppingCartListener(
        child: child,
      ),
    );
  }
}

class _AuthListener extends StatelessWidget {
  const _AuthListener({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: _onAuthStateChange,
      builder: (context, state) {
        return child;
      },
    );
  }

  void _onAuthStateChange(BuildContext context, AuthState state) {
    state.status.map(
      notDetermined: (value) => null,
      authenticated: (value) {
        getIt<UserBloc>().add(const UserEvent.fetch());
        context.read<ShoppingCartBloc>().add(const ShoppingCartEvent.refresh());
      },
      notAuthenticated: (value) {
        getIt<UserBloc>().add(const UserEvent.clear());
        context.read<ShoppingCartBloc>().add(const ShoppingCartEvent.refresh());
      },
    );
  }
}
