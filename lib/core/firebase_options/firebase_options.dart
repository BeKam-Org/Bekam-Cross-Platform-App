// 📦 Package imports:
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
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDyfXy9U0oBg4-e8FtaGzruss3JTtYsdsw',
    appId: '1:994795731395:web:a65aeb6136f3f93b71a576',
    messagingSenderId: '994795731395',
    projectId: 'bekam-2d852',
    authDomain: 'bekam-2d852.firebaseapp.com',
    storageBucket: 'bekam-2d852.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCv1q9RbhX01A9DSvNU5c4L2-X0_br4JaM',
    appId: '1:994795731395:android:012098f058989d7371a576',
    messagingSenderId: '994795731395',
    projectId: 'bekam-2d852',
    storageBucket: 'bekam-2d852.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCH8ryWKv-7-6nPCTHmVZoL0DlkyhVJq9c',
    appId: '1:994795731395:ios:999fc1bc13909b8f71a576',
    messagingSenderId: '994795731395',
    projectId: 'bekam-2d852',
    storageBucket: 'bekam-2d852.appspot.com',
    iosClientId: '994795731395-0mncpfj1k1920l0101jdbem6r61eu9mc.apps.googleusercontent.com',
    iosBundleId: 'com.example.bekam',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCH8ryWKv-7-6nPCTHmVZoL0DlkyhVJq9c',
    appId: '1:994795731395:ios:6ce7d6021189cadd71a576',
    messagingSenderId: '994795731395',
    projectId: 'bekam-2d852',
    storageBucket: 'bekam-2d852.appspot.com',
    iosClientId: '994795731395-d7nmk1s2ekdl3td7oh0bj0ibt0larjv9.apps.googleusercontent.com',
    iosBundleId: 'com.example.bekam.RunnerTests',
  );
}
