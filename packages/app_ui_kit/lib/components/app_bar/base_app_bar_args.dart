import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class AppBarArgs {
  // Data
  final Widget? leading;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final Widget? flexibleSpace;
  final bool? centerTitle;
  final bool? hideBackButton;

  // title data
  final int? maxLine;
  final TextAlign? textAlign;
  final Color? color;
  final double? maxFontSize;

  // Style
  final Color? backgroundColor;
  final Color? titleColor;
  final bool? isSliver;
  final bool? snap;
  final bool? floating;
  final bool? pinned;
  final double? elevation;
  final double? titleSpacing;
  final double? expandedHeight;
  final double? collapsedHeight;

//<editor-fold desc="Data Methods">
  const AppBarArgs({
    this.leading,
    this.actions,
    this.bottom,
    this.flexibleSpace,
    this.centerTitle,
    this.hideBackButton,
    this.maxLine,
    this.textAlign,
    this.color,
    this.maxFontSize,
    this.backgroundColor,
    this.titleColor,
    this.isSliver,
    this.snap,
    this.floating,
    this.pinned,
    this.elevation,
    this.titleSpacing,
    this.expandedHeight,
    this.collapsedHeight,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppBarArgs &&
          runtimeType == other.runtimeType &&
          leading == other.leading &&
          actions == other.actions &&
          bottom == other.bottom &&
          flexibleSpace == other.flexibleSpace &&
          centerTitle == other.centerTitle &&
          hideBackButton == other.hideBackButton &&
          maxLine == other.maxLine &&
          textAlign == other.textAlign &&
          color == other.color &&
          maxFontSize == other.maxFontSize &&
          backgroundColor == other.backgroundColor &&
          titleColor == other.titleColor &&
          isSliver == other.isSliver &&
          snap == other.snap &&
          floating == other.floating &&
          pinned == other.pinned &&
          elevation == other.elevation &&
          titleSpacing == other.titleSpacing &&
          expandedHeight == other.expandedHeight &&
          collapsedHeight == other.collapsedHeight);

  @override
  int get hashCode =>
      leading.hashCode ^
      actions.hashCode ^
      bottom.hashCode ^
      flexibleSpace.hashCode ^
      centerTitle.hashCode ^
      hideBackButton.hashCode ^
      maxLine.hashCode ^
      textAlign.hashCode ^
      color.hashCode ^
      maxFontSize.hashCode ^
      backgroundColor.hashCode ^
      titleColor.hashCode ^
      isSliver.hashCode ^
      snap.hashCode ^
      floating.hashCode ^
      pinned.hashCode ^
      elevation.hashCode ^
      titleSpacing.hashCode ^
      expandedHeight.hashCode ^
      collapsedHeight.hashCode;

  @override
  String toString() {
    return 'AppBarArgs{' +
        ' leading: $leading,' +
        ' actions: $actions,' +
        ' bottom: $bottom,' +
        ' flexibleSpace: $flexibleSpace,' +
        ' centerTitle: $centerTitle,' +
        ' hideBackButton: $hideBackButton,' +
        ' maxLine: $maxLine,' +
        ' textAlign: $textAlign,' +
        ' color: $color,' +
        ' maxFontSize: $maxFontSize,' +
        ' backgroundColor: $backgroundColor,' +
        ' titleColor: $titleColor,' +
        ' isSliver: $isSliver,' +
        ' snap: $snap,' +
        ' floating: $floating,' +
        ' pinned: $pinned,' +
        ' elevation: $elevation,' +
        ' titleSpacing: $titleSpacing,' +
        ' expandedHeight: $expandedHeight,' +
        ' collapsedHeight: $collapsedHeight,' +
        '}';
  }

  AppBarArgs copyWith({
    Widget? leading,
    List<Widget>? actions,
    PreferredSizeWidget? bottom,
    Widget? flexibleSpace,
    bool? centerTitle,
    bool? hideBackButton,
    int? maxLine,
    TextAlign? textAlign,
    Color? color,
    double? maxFontSize,
    Color? backgroundColor,
    Color? titleColor,
    bool? isSliver,
    bool? snap,
    bool? floating,
    bool? pinned,
    double? elevation,
    double? titleSpacing,
    double? expandedHeight,
    double? collapsedHeight,
  }) {
    return AppBarArgs(
      leading: leading ?? this.leading,
      actions: actions ?? this.actions,
      bottom: bottom ?? this.bottom,
      flexibleSpace: flexibleSpace ?? this.flexibleSpace,
      centerTitle: centerTitle ?? this.centerTitle,
      hideBackButton: hideBackButton ?? this.hideBackButton,
      maxLine: maxLine ?? this.maxLine,
      textAlign: textAlign ?? this.textAlign,
      color: color ?? this.color,
      maxFontSize: maxFontSize ?? this.maxFontSize,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      titleColor: titleColor ?? this.titleColor,
      isSliver: isSliver ?? this.isSliver,
      snap: snap ?? this.snap,
      floating: floating ?? this.floating,
      pinned: pinned ?? this.pinned,
      elevation: elevation ?? this.elevation,
      titleSpacing: titleSpacing ?? this.titleSpacing,
      expandedHeight: expandedHeight ?? this.expandedHeight,
      collapsedHeight: collapsedHeight ?? this.collapsedHeight,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'leading': this.leading,
      'actions': this.actions,
      'bottom': this.bottom,
      'flexibleSpace': this.flexibleSpace,
      'centerTitle': this.centerTitle,
      'hideBackButton': this.hideBackButton,
      'maxLine': this.maxLine,
      'textAlign': this.textAlign,
      'color': this.color,
      'maxFontSize': this.maxFontSize,
      'backgroundColor': this.backgroundColor,
      'titleColor': this.titleColor,
      'isSliver': this.isSliver,
      'snap': this.snap,
      'floating': this.floating,
      'pinned': this.pinned,
      'elevation': this.elevation,
      'titleSpacing': this.titleSpacing,
      'expandedHeight': this.expandedHeight,
      'collapsedHeight': this.collapsedHeight,
    };
  }

  factory AppBarArgs.fromMap(Map<String, dynamic> map) {
    return AppBarArgs(
      leading: map['leading'] as Widget,
      actions: map['actions'] as List<Widget>,
      bottom: map['bottom'] as PreferredSizeWidget,
      flexibleSpace: map['flexibleSpace'] as Widget,
      centerTitle: map['centerTitle'] as bool,
      hideBackButton: map['hideBackButton'] as bool,
      maxLine: map['maxLine'] as int,
      textAlign: map['textAlign'] as TextAlign,
      color: map['color'] as Color,
      maxFontSize: map['maxFontSize'] as double,
      backgroundColor: map['backgroundColor'] as Color,
      titleColor: map['titleColor'] as Color,
      isSliver: map['isSliver'] as bool,
      snap: map['snap'] as bool,
      floating: map['floating'] as bool,
      pinned: map['pinned'] as bool,
      elevation: map['elevation'] as double,
      titleSpacing: map['titleSpacing'] as double,
      expandedHeight: map['expandedHeight'] as double,
      collapsedHeight: map['collapsedHeight'] as double,
    );
  }

//</editor-fold>
}

class AppBarSliverArgs {
  final bool? pinned;
  final bool? snap;
  final bool? floating;

  const AppBarSliverArgs({
    this.pinned,
    this.snap,
    this.floating,
  });
}
