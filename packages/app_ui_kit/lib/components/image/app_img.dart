import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/skeleton/app_Shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/svg.dart';

class AppImg extends StatelessWidget {
  const AppImg(
    this.src, {
    super.key,
    this.fit = BoxFit.fitWidth,
    this.progressIndicatorBuilder,
    this.errorUrlWidget,
    this.memCacheHeight = 400,
  });

  const AppImg.fullSize(
    this.src, {
    super.key,
    this.fit = BoxFit.fitWidth,
    this.progressIndicatorBuilder,
    this.errorUrlWidget,
    this.memCacheHeight = 700,
  });

  final dynamic? src;
  final BoxFit fit;
  final int? memCacheHeight;
  final ProgressIndicatorBuilder? progressIndicatorBuilder;
  final Widget Function(BuildContext context, Object object, dynamic error)?
      errorUrlWidget;

  @override
  Widget build(BuildContext context) {
    const errorWidget = AppShimmer();

    if (src == null) {
      return errorWidget;
    }

    String? srcStr;
    if (src is String) {
      srcStr = src as String;
    } else {
      log('Src type not handel');
      return errorWidget;
    }

    if (srcStr.isNullOrEmpty) {
      return errorWidget;
    }
    Widget? imageWidget;

    if (srcStr.startsWith('http')) {
      var url = srcStr.startsWith('http://')
          ? srcStr.replaceFirst('http://', 'https://')
          : srcStr;

      if (srcStr.endsWith('.svg')) {
        return SvgPicture.network(srcStr, fit: fit);
      }

      imageWidget = CachedNetworkImage(
        imageUrl: url,
        fit: fit,
        progressIndicatorBuilder: progressIndicatorBuilder ??
            (context, url, downloadProgress) => const AppShimmer(),
        memCacheHeight: 500,
        errorWidget: errorUrlWidget ?? (context, url, error) => errorWidget,
      );

      //! Not caching
      // return Image.network(
      //   url, fit: this.fit, loadingBuilder: (context, url, downloadProgress)=>CircularProgressIndicator(color: Theme.of(context).primaryColor,).centered(),
      //   errorBuilder: (context, url, error) => errorWidget
      // );
    }

    if (srcStr.contains('assets/')) {
      if (srcStr.contains('.svg')) {
        imageWidget = SvgPicture.asset(
          srcStr,
          fit: fit,
        );
      } else {
        imageWidget = Image.asset(
          srcStr,
          fit: fit,
          errorBuilder: errorUrlWidget ?? (context, url, error) => errorWidget,
        );
      }
    } else if (srcStr.startsWith('/')) {
      imageWidget = Image.file(
        File(srcStr),
        fit: fit,
        errorBuilder: errorUrlWidget ?? (context, url, error) => errorWidget,
      );
    }

    if (imageWidget == null) {
      return errorWidget;
    }
    return imageWidget;
  }
}
