part of 'app_photo_view.dart';

class AppPhotoViewController<T> {
  AppPhotoViewController({
    this.imgList,
    this.imageRatio = 16 / 9,
    this.dotRatio = 1,
    required this.itemStringLink,
    this.itemStringPreview,
  }) {
    init();
  }

  final List<T>? imgList;
  final String Function(T item) itemStringLink;
  final String Function(T item)? itemStringPreview;
  final double imageRatio;
  final double dotRatio;

  final controller = PageController();
  final listCarousel = <String>[];
  final listPreview = <String>[];
  var isOnSliding = false;
  final curIndexLD = ValueNotifier<int>(0);

  void init() {
    listCarousel.addAll(imgList.mapAsList(itemStringLink));
    listPreview.addAll(imgList.mapAsList(itemStringPreview ?? itemStringLink));
  }

  // set page
  void jumpToPage(int page) {
    controller.jumpToPage(page);
    curIndexLD.value = page;
  }

  void updateImageList(List<String> imageList) {}

  Future<void> dispose() async {}
}
