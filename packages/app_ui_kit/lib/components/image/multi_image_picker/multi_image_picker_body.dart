// import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
// import 'package:app_ui_kit/app/widgets/image/border_img_view.dart';
// import 'package:app_ui_kit/app/widgets/image/photoview_utils.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:reactive_forms/reactive_forms.dart';
//
// class ReactiveMultiImagePicker extends StatelessWidget {
//   const ReactiveMultiImagePicker(
//       {Key? key, required this.fileKey, required this.form, this.height = 85})
//       : super(key: key);
//
//   final String fileKey;
//   final FormGroup form;
//   final double height;
//
//   static addImage({
//     required BuildContext context,
//     required FormGroup form,
//     required String fileKey,
//     required ImagePicker imagePicker,
//     bool clearOnAdd = true,
//   }) {
//     ImageUtils.getMultipleImageFromLibrary(imagePicker).then((rs) {
//       if (rs.isNullOrEmpty) return;
//
//       if (clearOnAdd) {
//         form.controls[fileKey]?.value = rs;
//       } else {
//         var oldList = form.value[fileKey] as List<dynamic>?;
//         form.controls[fileKey]?.value = [...?(oldList), ...?rs];
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ReactiveStatusListenableBuilder(
//       formControlName: fileKey,
//       builder: (context, control, child) {
//         final listFile = control.value as List<dynamic>?;
//         if (listFile.isNullOrEmpty) return const SizedBox.shrink();
//
//         // var imageList = listFile.filterAsList(FileUtils.isImage);
//
//         return _ImageSelect(
//           height: height,
//           list: listFile.mapAsList((item) {
//             if (item is File) {
//               return File(item.path);
//             } else {
//               return item;
//             }
//           }),
//           onDelete: (file) => _removeFile(file, form),
//         );
//       },
//     );
//   }
//
//   _removeFile(dynamic file, FormGroup form) {
//     var listFile = form.value[fileKey] as List<dynamic>?;
//     var removeList = [...?listFile];
//     removeList.removeWhere((item) => _getPath(item) == _getPath(file));
//     form.controls[fileKey]?.value = removeList;
//   }
// }
//
// class _ImageSelect extends StatelessWidget {
//   const _ImageSelect(
//       {Key? key,
//       required this.list,
//       required this.onDelete,
//       required this.height})
//       : super(key: key);
//
//   final List<dynamic>? list;
//   final void Function(dynamic) onDelete;
//   final double height;
//
//   @override
//   Widget build(BuildContext context) {
//     if (list.isNullOrEmpty) return const SizedBox.shrink();
//
//     return SizedBox(
//       height: height,
//       child: ListView.separated(
//         padding: EdgeInsets.zero,
//         scrollDirection: Axis.horizontal,
//         itemCount: list?.length ?? 0,
//         itemBuilder: (context, index) {
//           var file = list.getOrNull(index);
//           if (file == null) return const SizedBox.shrink();
//
//           return Stack(
//             alignment: Alignment.topRight,
//             children: [
//               GestureDetector(
//                   onTap: () => PhotoviewUtils.onZoomLibrary(
//                       context, list.mapAsList((item) => _getPath(item)),
//                       initialPage: index),
//                   child: BorderImgView(
//                     _getPath(file),
//                   )),
//               BtnCircleIcon(
//                 Icons.close,
//                 size: 16,
//                 backgroundColor: Theme.of(context).onPrimary(),
//                 iconColor: context.themeText.text.color,
//                 onPressed: () {
//                   onDelete(file);
//                 },
//               ).p4()
//             ],
//           );
//         },
//         separatorBuilder: (_, index) => Gaps.hGap8,
//       ),
//     );
//   }
// }
//
// String _getPath(dynamic item) {
//   if (item is File) {
//     return item.path;
//   } else {
//     return castOrFallback(item, '');
//   }
// }
