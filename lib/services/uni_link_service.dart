import 'package:hlshop/all_file/all_file.dart';

typedef UniLinkUriCallBack = void Function(Uri? uri);
typedef UniLinkLinkCallBack = void Function(String? link);

class UniLinkService {
  static StreamSubscription? _sub;

  Future<void> initUniLinksStr({required UniLinkLinkCallBack callBack}) async {
    // // Platform messages may fail, so we use a try/catch PlatformException.
    // try {
    //   final initialLink = await getInitialLink();
    //   // Parse the link and warn the user, if it is not correct,
    //   // but keep in mind it could be `null`.
    //   callBack.call(initialLink);
    //
    //   _sub?.cancel();
    //   _sub = linkStream.listen((String? path) {
    //     callBack.call(path);
    //   }, onError: (err) {
    //     // Handle exception by warning the user their action did not succeed
    //   });
    // } on PlatformException {
    //   // Handle exception by warning the user their action did not succeed
    //   // return?
    // } on FormatException {
    //   // Handle exception by warning the user their action did not succeed
    //   // return?
    // }
  }

  Future<void> initUniLinksUri({required UniLinkUriCallBack callBack}) async {
    // // Platform messages may fail, so we use a try/catch PlatformException.
    // try {
    //   final initialLink = await getInitialUri();
    //   // Parse the link and warn the user, if it is not correct,
    //   // but keep in mind it could be `null`.
    //   callBack.call(initialLink);
    //
    //   _sub?.cancel();
    //   _sub = uriLinkStream.listen((Uri? uri) {
    //     callBack.call(uri);
    //   }, onError: (err) {
    //     // Handle exception by warning the user their action did not succeed
    //   });
    // } on PlatformException {
    //   // Handle exception by warning the user their action did not succeed
    //   // return?
    // } on FormatException {
    //   // Handle exception by warning the user their action did not succeed
    //   // return?
    // }
  }

  void close() {
    _sub?.cancel();
  }
}
