// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
   /* if (kIsWeb) {
      return web;
    }*/
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      /*case TargetPlatform.iOS:
      return ios;*/
      // case TargetPlatform.macOS:
      //   return macos;
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

 /* static const FirebaseOptions web = FirebaseOptions(
      apiKey: "AIzaSyAugtZ6tHRRLGUyhA4yCkwj4Kdzs1aaORQ",
      messagingSenderId: "241787008348",
      projectId: "tempproject-65d7a",
      authDomain: "tempproject-65d7a.firebaseapp.com",
      storageBucket: "tempproject-65d7a.appspot.com",
      appId: "1:241787008348:web:0bc5b471134e57a33c3d99",
      measurementId: "G-D6H4B8NYX0"
      // authDomain: 'xxxxxxxxxxxxxxxxxxx',
      // databaseURL: 'xxxxxxxxxxxxxxxxxxx',
      // storageBucket: 'xxxxxxxxxxxxxxxxxxx',
      // measurementId: 'xxxxxxxxxxxxxxxxxxx',
      );
*/
  static const FirebaseOptions android = FirebaseOptions(
    // apiKey: 'xxxxxxxxxxxxxxxxxxx',
    // appId: 'xxxxxxxxxxxxxxxxxxx',
    // messagingSenderId: 'xxxxxxxxxxxxxxxxxxx',
    // projectId: 'xxxxxxxxxxxxxxxxxxx',
    // databaseURL: 'xxxxxxxxxxxxxxxxxxx',
    storageBucket: 'first-project-54fe1.appspot.com',
    apiKey: "AIzaSyCD7eBMea-dtaSpWjoegI_NkUenz3VAQIc",
    appId: "1:557842858903:android:7b0414e6e7fd05a36ebad2",
    messagingSenderId: "557842858903",
    projectId: "first-project-54fe1",
  );

  /*static const FirebaseOptions ios = FirebaseOptions(
    apiKey: "AIzaSyAugtZ6tHRRLGUyhA4yCkwj4Kdzs1aaORQ",
    appId: '1:241787008348:ios:99afc325632f7e133c3d99',
    messagingSenderId: "241787008348",
    projectId: "tempproject-65d7a",
    // databaseURL: 'xxxxxxxxxxxxxxxxxxx',
    storageBucket: 'tempproject-65d7a.appspot.com',
    // androidClientId: 'xxxxxxxxxxxxxxxxxxx',
    // iosClientId: 'xxxxxxxxxxxxxxxxxxx',
    iosBundleId: 'com.temp.ios',
  );*/

// static const FirebaseOptions macos = FirebaseOptions(
//   apiKey: 'xxxxxxxxxxxxxxxxxxx',
//   appId: 'xxxxxxxxxxxxxxxxxxx',
//   messagingSenderId: 'xxxxxxxxxxxxxxxxxxx',
//   projectId: 'xxxxxxxxxxxxxxxxxxx',
//   databaseURL: 'xxxxxxxxxxxxxxxxxxx',
//   storageBucket: 'xxxxxxxxxxxxxxxxxxx',
//   androidClientId: 'xxxxxxxxxxxxxxxxxxx',
//   iosClientId: 'xxxxxxxxxxxxxxxxxxx',
//   iosBundleId: 'xxxxxxxxxxxxxxxxxxx',
// );
}
