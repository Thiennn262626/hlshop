/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  $AssetsIconsAppGen get app => const $AssetsIconsAppGen();
  $AssetsIconsCommonGen get common => const $AssetsIconsCommonGen();
  $AssetsIconsProductGen get product => const $AssetsIconsProductGen();
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/en-US.json
  String get enUS => 'assets/translations/en-US.json';

  /// File path: assets/translations/vi-VN.json
  String get viVN => 'assets/translations/vi-VN.json';

  /// List of all assets
  List<String> get values => [enUS, viVN];
}

class $AssetsIconsAppGen {
  const $AssetsIconsAppGen();

  /// File path: assets/icons/app/app_logo.png
  AssetGenImage get appLogo =>
      const AssetGenImage('assets/icons/app/app_logo.png');

  /// File path: assets/icons/app/app_logo_name.png
  AssetGenImage get appLogoNamePng =>
      const AssetGenImage('assets/icons/app/app_logo_name.png');

  /// File path: assets/icons/app/app_logo_name.svg
  SvgGenImage get appLogoNameSvg =>
      const SvgGenImage('assets/icons/app/app_logo_name.svg');

  /// File path: assets/icons/app/splash.png
  AssetGenImage get splash =>
      const AssetGenImage('assets/icons/app/splash.png');

  /// List of all assets
  List<dynamic> get values => [appLogo, appLogoNamePng, appLogoNameSvg, splash];
}

class $AssetsIconsCommonGen {
  const $AssetsIconsCommonGen();

  /// File path: assets/icons/common/apple.svg
  SvgGenImage get apple => const SvgGenImage('assets/icons/common/apple.svg');

  /// File path: assets/icons/common/empty_box.svg
  SvgGenImage get emptyBox =>
      const SvgGenImage('assets/icons/common/empty_box.svg');

  /// File path: assets/icons/common/facebook.svg
  SvgGenImage get facebook =>
      const SvgGenImage('assets/icons/common/facebook.svg');

  /// File path: assets/icons/common/google.svg
  SvgGenImage get google => const SvgGenImage('assets/icons/common/google.svg');

  /// List of all assets
  List<SvgGenImage> get values => [apple, emptyBox, facebook, google];
}

class $AssetsIconsProductGen {
  const $AssetsIconsProductGen();

  /// File path: assets/icons/product/authentic_100.svg
  SvgGenImage get authentic100 =>
      const SvgGenImage('assets/icons/product/authentic_100.svg');

  /// File path: assets/icons/product/free_shipping.svg
  SvgGenImage get freeShipping =>
      const SvgGenImage('assets/icons/product/free_shipping.svg');

  /// File path: assets/icons/product/return_in_datys.svg
  SvgGenImage get returnInDatys =>
      const SvgGenImage('assets/icons/product/return_in_datys.svg');

  /// List of all assets
  List<SvgGenImage> get values => [authentic100, freeShipping, returnInDatys];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
