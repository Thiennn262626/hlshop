import 'dart:io' as io show File;

import 'package:hlshop/all_file/all_file.dart';

class ImageUtils {
  ImageUtils._();

  static Future<File?> getImageFromLibrary(
      ImagePicker imagePicker, BuildContext context) async {
    try {
      final result = await imagePicker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 60,
        maxWidth: 900,
        maxHeight: 900,
      );
      if (result != null) {
        return Future.value(_cropImage(File(result.path), context));
      } else {
        return Future.value();
      }
    } catch (e) {
      return Future.error(e);
    }
  }

  static Future<List<File>?> getMultipleImageFromLibrary(
      ImagePicker imagePicker) async {
    try {
      final result = await imagePicker.pickMultiImage(
        imageQuality: 60,
        maxWidth: 900,
        maxHeight: 900,
      );
      if (result != null) {
        return Future.value(result.mapAsList((item) => File(item.path)));
      } else {
        return Future.value();
      }
    } catch (e) {
      return Future.error(e);
    }
  }

  static Future<io.File> getImageFromPath(
      String? path, String? fileName) async {
    if (path == null || fileName == null) {
      throw Exception("File path or file name cannot be null");
    }
    return io.File('$path/$fileName');
  }

  static Future<io.File?> saveImageToPath(
    io.File? sourceImage,
    String? path,
    String? fileName,
  ) async {
    if (sourceImage == null || path == null || fileName == null) return null;
    final io.File newImage = await sourceImage.copy('$path/$fileName');
    return newImage;
  }
}

Future<File?> _cropImage(File? _pickedFile, BuildContext context) async {
  if (_pickedFile != null) {
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: _pickedFile!.path,
      compressFormat: ImageCompressFormat.jpg,
      compressQuality: 100,
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Chỉnh kích thước mong muốn'.tr(),
            toolbarColor: Colors.deepOrange,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        IOSUiSettings(
          title: 'Chỉnh kích thước mong muốn'.tr(),
        ),
        WebUiSettings(
          context: context,
          presentStyle: CropperPresentStyle.dialog,
          boundary: const CroppieBoundary(
            width: 520,
            height: 520,
          ),
          viewPort:
              const CroppieViewPort(width: 480, height: 480, type: 'circle'),
          enableExif: true,
          enableZoom: true,
          showZoomer: true,
        ),
      ],
    );
    return File(croppedFile!.path);
  }
}
