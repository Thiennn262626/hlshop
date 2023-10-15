// import 'dart:math';
//
// import 'package:crypto/crypto.dart';
// import 'package:hlshop/all_file/all_file.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:sign_in_with_apple/sign_in_with_apple.dart';
//
// class AuthService extends GetxService {
//   static const int OTP_DURATION_SEC = 80;
//   // final UserController _userController = Get.find();
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//
//   final firebaseUserLD = Rx<User?>(null);
//
//   // For check OTP send
//   String? _verificationId;
//
//   // one-time fetch
//   Future<User?> get getFirebaseUser async => _auth.currentUser;
//
//   // realtime stream
//   Stream<User?> get getFirebaseUserStream => _auth.userChanges();
//
//   // Token change stream
//   StreamSubscription<User?>? tokenChangeStream;
//
//   String? _curAccessToken;
//
//   @override
//   void onReady() async {
//
//     // listenTokenChange();
//     // bind method to Rx state
//     ever(firebaseUserLD, handleAuthChanged);
//
//     // // init last user from firebase
//     // firebaseUserLD.value = await getFirebaseUser;
//
//     // bind Rx to Firebase auth change event
//     firebaseUserLD.bindStream(getFirebaseUserStream);
//
//     super.onReady();
//   }
//
//   Future<void> refreshToken() async {
//     if (_auth.currentUser != null) {
//       logger.i('Token reload');
//       _auth.currentUser?.reload();
//     }
//   }
//
//   // void fetchUserData() {
//   //   // logger.i('_fetchUserData check is login: logined');
//   //
//   //   if (firebaseUserLD.value?.uid != null) {
//   //     _userController.fetchUser();
//   //   }
//   // }
//
//   handleAuthChanged(User? _firebaseUser) async {
//     if (_firebaseUser?.uid != null) {
//       // await _addToken(_firebaseUser!);
//       // logger.i('check is login: logined');
//       // listenTokenChange();
//       userChangeToken();
//       // fetchUserData();
//
//       // await isAdmin();
//       // _clearGuestTokenFromLocal();
//     } else {
//       // _clearData();
//       _getOrCreateGuestUser();
//       // _createGuestUser();
//     }
//   }
//
//   void _getOrCreateGuestUser() async {
//     final String? guestToken = await LocalDataService.getGuestTokenFromLocal();
//     if (guestToken?.isNotBlank == true) {
//       // _updateTokenForGraphqlClient(guestToken);
//     } else {
//       _createGuestUser();
//     }
//   }
//
//   void _createGuestUser() {
//     logger.w('Request Name: createGuestToken \n'
//         'Request Type: GetOrCreateGuestCustomer');
//     graphqlProvider.requestWithOutToken(request: GGetOrCreateGuestCustomerReq()).then((value){
//       LocalDataService.saveTokenToLocal(value?.createOrGetGuestCustomer);
//       graphqlProvider.guestTokenChange(token: value?.createOrGetGuestCustomer);
//       // _updateTokenForGraphqlClient(value?.createOrGetGuestCustomer);
//     });
//   }
//
//   void _updateTokenForGraphqlClient(String? token) {
//     if (token?.isNullOrEmpty() == false) {
//       getIt<GraphqlClientService>().updateGuestToken(token: token);
//     }
//   }
//
//   void userChangeToken() async {
//     if (firebaseUserLD.value != null) {
//       logger.i('USER ACCESS: ${firebaseUserLD.value?.uid}');
//       String? token = await firebaseUserLD.value?.getIdToken();
//       if(setCurToken(token: token)){
//         graphqlProvider.accessTokenChange(token: token);
//         // getIt<GraphqlClientService>().updateAccessToken(token: token);
//       }
//     }
//   }
//
//   bool setCurToken({String? token}){
//     if(token !=null && token != _curAccessToken){
//       _curAccessToken = token;
//       return true;
//     }else{
//       return false;
//     }
//   }
//
//   Future<void> checkAndUpdateAccessTokenForGraphql()async{
//     if (firebaseUserLD.value != null) {
//       var token = await firebaseUserLD.value?.getIdToken();
//       if(setCurToken(token: token)){
//         graphqlProvider.accessTokenChangeWithoutMigrate(token);
//         // getIt<GraphqlClientService>().updateAccessTokenWithoutMigrate(token: token);
//         return Future.value();
//       }
//     }else{
//       logger.w('NEED TO LOGIN');
//       return Future.error('NEED TO LOGIN');
//     }
//   }
//
//   // void listenTokenChange() {
//   //   tokenChangeStream = _auth.userChanges().listen((User? user) async {
//   //     logger.i('USER CHANGE: token: ${user}');
//   //     if (user != null) {
//   //       // print('AuthController.idTokenChanges => _addToken');
//   //       // await _addToken(user);
//   //       var token = await user.getIdToken();
//   //       logger.i('USER CHANGE: token change $token');
//   //       // getIt<GraphqlClientModule>().updateAccessToken(token: token);
//   //     } else {
//   //       // print('AuthController.idTokenChanges => cancel');
//   //       // tokenChangeStream?.cancel();
//   //     }
//   //   });
//   // }
//
//   Future<dynamic> signInWithEmail(String email, String password) async {
//     return _auth.signInWithEmailAndPassword(email: email, password: password);
//   }
//
//   //sign in with apple
//   /// Generates a cryptographically secure random nonce, to be included in a
//   /// credential request.
//   String _generateNonce([int length = 32]) {
//     final charset =
//         '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
//     final random = Random.secure();
//     return List.generate(length, (_) => charset[random.nextInt(charset.length)])
//         .join();
//   }
//
//   /// Returns the sha256 hash of [input] in hex notation.
//   String _sha256ofString(String input) {
//     final bytes = utf8.encode(input);
//     final digest = sha256.convert(bytes);
//     return digest.toString();
//   }
//
//   Future<UserCredential> signInWithApple() async {
//     // To prevent replay attacks with the credential returned from Apple, we
//     // include a nonce in the credential request. When signing in with
//     // Firebase, the nonce in the id token returned by Apple, is expected to
//     // match the sha256 hash of `rawNonce`.
//
//     print('Sign-in Apple: begin');
//     final rawNonce = _generateNonce();
//     final nonce = _sha256ofString(rawNonce);
//
//     // Request credential for the currently signed in Apple account.
//     final appleCredential = await SignInWithApple.getAppleIDCredential(
//       scopes: [
//         AppleIDAuthorizationScopes.email,
//         AppleIDAuthorizationScopes.fullName,
//       ],
//       nonce: nonce,
//     );
//     if (appleCredential.identityToken != null) {
//       print('APPLE-appleCredential: ${appleCredential.identityToken}');
//       // Create an `OAuthCredential` from the credential returned by Apple.
//       final oauthCredential = OAuthProvider("apple.com").credential(
//         idToken: appleCredential.identityToken,
//         rawNonce: rawNonce,
//       );
//       print('APPLE-oauthCredential: ${oauthCredential.accessToken}');
//       // Sign in the user with Firebase. If the nonce we generated earlier does
//       // not match the nonce in `appleCredential.identityToken`, sign in will fail.
//       return await FirebaseAuth.instance
//           .signInWithCredential(oauthCredential)
//           .then((value) async {
//         if (value.user != null) {
//           // await _addToken(value.user!);
//           _verificationId = null;
//         }
//         return value;
//       });
//     }
//     return Future.error('signInWithApple error');
//   }
//
//   // Future<UserCredential> signInWithAppleSignIn()async{
//   //
//   //     if (!await AppleSignIn.isAvailable()) {
//   //       return Future.error('signInWithApple Error: device not available error');
//   //     }
//   //
//   //     final res = await AppleSignIn.performRequests([
//   //       AppleIdRequest(requestedScopes: [Scope.email, Scope.fullName])
//   //     ]);
//   //
//   //     switch (res.status) {
//   //       case AuthorizationStatus.authorized:
//   //         try {
//   //           //Get Token
//   //           final AppleIdCredential appleIdCredential = res.credential;
//   //           final OAuthProvider oAuthProvider = OAuthProvider('apple.com');
//   //           final credential = oAuthProvider.credential(
//   //               idToken: String.fromCharCodes(appleIdCredential.identityToken),
//   //               accessToken:
//   //               String.fromCharCodes(appleIdCredential.authorizationCode));
//   //
//   //           return await FirebaseAuth.instance.signInWithCredential(credential).then((value)async{
//   //             if(value.user !=null){
//   //               await _addToken(value.user!);
//   //               _verificationId = null;
//   //             }
//   //             return value;
//   //           });
//   //         } on PlatformException catch (error) {
//   //           return Future.error('signInWithApple Error: ${error.message}');
//   //         } on FirebaseAuthException catch (error) {
//   //           return Future.error('signInWithApple Error: ${error.message}');
//   //         }
//   //         break;
//   //       case AuthorizationStatus.error:
//   //         return Future.error('signInWithApple Error: Apple authorization failed');
//   //         break;
//   //       case AuthorizationStatus.cancelled:
//   //         return Future.error('signInWithApple Error: Apple cancelled');
//   //         break;
//   //     }
//   //     return Future.error('signInWithApple Error: no reason');
//   // }
//
//   Future<UserCredential> signInWithGoogle() async {
//     final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
//
//     final GoogleSignInAuthentication? googleAuth =
//     await googleUser?.authentication;
//
//     if (googleAuth != null) {
//       final GoogleAuthCredential? credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       ) as GoogleAuthCredential?;
//
//       if (credential != null) {
//         return await _auth.signInWithCredential(credential).then((value) async {
//           if (value.user != null) {
//             // await _addToken(value.user!);
//             _verificationId = null;
//           }
//           return value;
//         });
//       }
//     }
//
//     return Future.error('signInWithGoogle error');
//   }
//
//   Future<dynamic> signInWithFacebook() async {
//     dynamic result = await FacebookAuth.instance.login();
//     if (result != null && result.status == LoginStatus.success) {
//       logger.i('AuthController.signInWithFacebook => $result');
//       if (result is AccessToken) {
//         logger.i('AuthController.signInWithFacebook => AccessToken');
//
//         // Login success
//         final OAuthCredential facebookAuthCredential =
//         FacebookAuthProvider.credential(result.token);
//         return await _auth.signInWithCredential(facebookAuthCredential).then(
//                 (value) async {
//               if (value.user != null) {
//                 // await _addToken(value.user!);
//                 _verificationId = null;
//               }
//               return value;
//             }, onError: (err) {
//           logger.e('AuthController.signInWithFacebook err => $err');
//           return Future.error(err);
//         });
//       } else if (result is LoginResult) {
//         logger.i('AuthController.signInWithFacebook => LoginResult');
//         // return Future.error(result.message.toString());
//         if (result.accessToken?.token.isNullOrEmpty() == true) {
//           logger.e(
//               'AuthController.signInWithFacebook err => ${result.message.toString()}');
//           return Future.error(result.message.toString());
//         }
//
//         final OAuthCredential facebookAuthCredential =
//         FacebookAuthProvider.credential(result.accessToken!.token);
//         return await _auth.signInWithCredential(facebookAuthCredential).then(
//                 (value) async {
//               if (value.user != null) {
//                 // await _addToken(value.user!);
//                 _verificationId = null;
//               }
//               return value;
//             }, onError: (err) {
//           FacebookAuth.instance.logOut().then(
//                   (value) => logger.i('logout facebook'),
//               onError: (err) => logger.e('login fb fail $err'));
//
//           logger.e('AuthController.signInWithFacebook err => $err');
//           return Future.error(AppConstant.DIFFERENT_SIGNIN_CREDENTIAL);
//         });
//       }
//     } else {}
//
//     logger.e('signInWithFacebook error');
//     return Future.error('signInWithFacebook error');
//   }
//
//   void signInWithPhone({
//     required String? phoneNumber,
//     required void Function(String verificationID) onCodeSent,
//     required void Function(String? msg) onFail,
//     required VoidCallback onSuccessLogin,
//   }) async {
//     if (phoneNumber == null) {
//       onFail('phoneNumber null');
//       return;
//     }
//
//     // TODO change to international number
//     String vnPhoneNumber = phoneNumber;
//     if (phoneNumber.startsWith('0')) {
//       vnPhoneNumber = '+84' + phoneNumber.substring(1);
//     } else {
//       vnPhoneNumber = '+84' + phoneNumber;
//     }
//
//     return _auth.verifyPhoneNumber(
//         phoneNumber: vnPhoneNumber,
//         verificationCompleted: (PhoneAuthCredential credential) async {
//           print('AuthController.signInWithPhone => completedLogin');
//           await _auth.signInWithCredential(credential).then((value) async {
//             if (value.user != null) {
//               // await _addToken(value.user!);
//               _verificationId = null;
//               if (Get.currentRoute == Routes.PHONE_PIN) {
//                 Get.back();
//               }
//               onSuccessLogin();
//             }
//           });
//         },
//         verificationFailed: (FirebaseAuthException e) {
//           if (e.code == 'invalid-phone-number') {
//             onFail('invalid-phone-number');
//           }
//           onFail(e.message);
//         },
//         codeSent: (String verificationID, int? resendToken) async {
//           onCodeSent(verificationID);
//           // await SmsAutoFill().listenForCode;
//           _verificationId = verificationID;
//         },
//         codeAutoRetrievalTimeout: (String verificationID) {
//           // onCodeSent(verificationID);
//           _verificationId = verificationID;
//         },
//         timeout: Duration(seconds: OTP_DURATION_SEC));
//   }
//
//   Future<void> signInOTPAndCredential({required String pin}) async {
//     if (_verificationId == null) {
//       return Future.error('verificationCode null');
//     }
//
//     try {
//       await _auth
//           .signInWithCredential(PhoneAuthProvider.credential(
//           verificationId: _verificationId!, smsCode: pin))
//           .then((value) async {
//         if (value.user != null) {
//           // await _addToken(value.user!);
//           _verificationId = null;
//           return Future.value();
//         } else {
//           return Future.error('signInWithCredential error');
//         }
//       });
//     } catch (e) {
//       return Future.error(e);
//     }
//   }
//
//   Future<dynamic> registerWithEmail(String email, String password) async {
//     return _auth.createUserWithEmailAndPassword(
//         email: email, password: password);
//   }
//
//   Future<void> sendPasswordResetEmail(String email) async {
//     return _auth.sendPasswordResetEmail(email: email);
//   }
//
//   isAdmin() async {}
//
//   Future<void> signOut() {
//     _clearData();
//     return _auth.signOut();
//   }
//
//   void _clearData() {
//     // getIt<UserController>().clearUserData();
//     // _userController.clearUserData();
//     // getIt<DioModule>().removeToken();
//     // tokenChangeStream?.cancel();
//     // print('AuthController.tokenChangeStream => cancel');
//     // logger.i('AuthController.tokenChangeStream => cancel');
//   }
//
//   @override
//   void onClose() {
//     // print('AuthController.tokenChangeStream => cancel');
//     logger.i('AuthController.tokenChangeStream => cancel');
//     tokenChangeStream?.cancel();
//     super.onClose();
//   }
//
//   Future<void> _addToken(User user) async {
//     var token = await user.getIdToken();
//     // getIt<DioModule>().addToken(token);
//   }
//
//   Future<String> getToken() async {
//     if (firebaseUserLD.value == null)
//       return Future.error('firebaseUser.value null');
//
//     return await firebaseUserLD.value!.getIdToken();
//   }
// }
