// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyD7qFa1Uk4xsrVK-9C07ayTKmJXuTO7zwk',
    appId: '1:131116740387:web:4b662b069a77bc74f7a696',
    messagingSenderId: '131116740387',
    projectId: 'apptareas-828b1',
    authDomain: 'apptareas-828b1.firebaseapp.com',
    storageBucket: 'apptareas-828b1.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDiP5lMsZc8djA3TOOH9SO9lHzn0lxPSek',
    appId: '1:131116740387:android:ccd2adce6936d1b4f7a696',
    messagingSenderId: '131116740387',
    projectId: 'apptareas-828b1',
    storageBucket: 'apptareas-828b1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAPiYIdvlHTvYCkxcB4m5XlnSW5J_JZ19M',
    appId: '1:131116740387:ios:2516f3f3e6708f72f7a696',
    messagingSenderId: '131116740387',
    projectId: 'apptareas-828b1',
    storageBucket: 'apptareas-828b1.appspot.com',
    iosBundleId: 'app.meedu.appTareas',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAPiYIdvlHTvYCkxcB4m5XlnSW5J_JZ19M',
    appId: '1:131116740387:ios:2516f3f3e6708f72f7a696',
    messagingSenderId: '131116740387',
    projectId: 'apptareas-828b1',
    storageBucket: 'apptareas-828b1.appspot.com',
    iosBundleId: 'app.meedu.appTareas',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD7qFa1Uk4xsrVK-9C07ayTKmJXuTO7zwk',
    appId: '1:131116740387:web:f2572e41bc7440f8f7a696',
    messagingSenderId: '131116740387',
    projectId: 'apptareas-828b1',
    authDomain: 'apptareas-828b1.firebaseapp.com',
    storageBucket: 'apptareas-828b1.appspot.com',
  );
}
