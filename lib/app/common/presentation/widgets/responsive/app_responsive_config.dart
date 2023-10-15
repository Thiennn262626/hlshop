import 'package:hlshop/all_file/all_file.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppResponsiveConfig extends StatelessWidget {
  const AppResponsiveConfig({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWrapper.builder(
      Layout(
        format: AppLayoutFormat(),
        child: child,
      ),
      maxWidth: 1200,
      minWidth: 480,
      defaultScale: true,
      breakpoints: [
        ResponsiveBreakpoint.autoScale(AppBreakpointType.xxs.screenSize,
            name: MOBILE, scaleFactor: AppBreakpointType.xxs.scale),
        ResponsiveBreakpoint.resize(AppBreakpointType.xs.screenSize,
            name: MOBILE, scaleFactor: AppBreakpointType.xs.scale),
        ResponsiveBreakpoint.resize(AppBreakpointType.sm.screenSize,
            name: MOBILE, scaleFactor: AppBreakpointType.sm.scale),
        ResponsiveBreakpoint.autoScale(AppBreakpointType.md.screenSize,
            name: TABLET, scaleFactor: AppBreakpointType.md.scale),
        ResponsiveBreakpoint.autoScale(AppBreakpointType.lg.screenSize,
            name: TABLET, scaleFactor: AppBreakpointType.lg.scale),
        ResponsiveBreakpoint.autoScale(AppBreakpointType.xl.screenSize,
            name: TABLET, scaleFactor: AppBreakpointType.xl.scale),
        ResponsiveBreakpoint.autoScale(AppBreakpointType.xxl.screenSize,
            name: DESKTOP, scaleFactor: AppBreakpointType.xxl.scale),
      ],
      background: Container(color: const Color(0xFFF5F5F5)),
    );
  }
}
