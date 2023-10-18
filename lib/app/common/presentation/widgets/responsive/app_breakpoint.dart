import 'package:layout/layout.dart';
import 'package:hlshop/all_file/all_file.dart';

enum AppBreakpointType {
  xxs(screenSize: 320, scale: 0.95),
  xs(screenSize: 375, scale: 1.1),
  sm(screenSize: 576, scale: 1.1),
  md(screenSize: 768, scale: 1.2),
  lg(screenSize: 992, scale: 1.3),
  xl(screenSize: 1200, scale: 1.4),
  xxl(screenSize: 1400, scale: 1.7);

  const AppBreakpointType({required this.screenSize, required this.scale});

  final double screenSize;
  final double scale;
}

class AppLayoutFormat extends MaterialLayoutFormat {
  AppLayoutFormat({
    LayoutValue<double>? margin,
    LayoutValue<double>? gutter,
  })  : this.margin = margin ?? _defaultMargin,
        this.gutter = gutter ?? _defaultMargin;

  @override
  final LayoutValue<double> gutter;

  @override
  final LayoutValue<double> margin;

  static final LayoutValue<double> _defaultMargin = LayoutValue.builder(
    (layout) {
      return layout.width <= 719 ? 16 : 24;
    },
  );

  @override
  final Map<LayoutBreakpoint, double> breakpoints = {
    LayoutBreakpoint.xs: 0,
    LayoutBreakpoint.sm: AppBreakpointType.sm.screenSize,
    LayoutBreakpoint.md: AppBreakpointType.md.screenSize,
    LayoutBreakpoint.lg: AppBreakpointType.lg.screenSize,
    LayoutBreakpoint.xl: AppBreakpointType.xl.screenSize,
  };

  @override
  final LayoutValue<double> maxWidth = BreakpointValue.all(
    xs: AppBreakpointType.xs.screenSize,
    sm: AppBreakpointType.sm.screenSize,
    md: AppBreakpointType.md.screenSize,
    lg: AppBreakpointType.lg.screenSize,
    xl: AppBreakpointType.xl.screenSize,
  );

  @override
  final LayoutValue<int> columns = LayoutValue.builder(
    (layout) {
      final width = layout.width;
      if (width <= AppBreakpointType.sm.screenSize) {
        return 4;
      } else if (width <= AppBreakpointType.lg.screenSize) {
        return 8;
      } else {
        return 12;
      }
    },
  );
}
