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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCN4EXbFf5y9AjweTr_isjTcY6iR7zSKTU',
    appId: '1:908297377698:web:857b6de4624f7182d284fb',
    messagingSenderId: '908297377698',
    projectId: 'lab8-1179e',
    authDomain: 'lab8-1179e.firebaseapp.com',
    storageBucket: 'lab8-1179e.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCTB6mkOPQMjscvLCmdFY3OewCp6m1cWFY',
    appId: '1:908297377698:android:15f5d556eafb79c2d284fb',
    messagingSenderId: '908297377698',
    projectId: 'lab8-1179e',
    storageBucket: 'lab8-1179e.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAcE-k9IPF9w1wQe4Ixh0BUekM85uEjHNE',
    appId: '1:908297377698:ios:0045b4db8daf6896d284fb',
    messagingSenderId: '908297377698',
    projectId: 'lab8-1179e',
    storageBucket: 'lab8-1179e.firebasestorage.app',
    iosClientId: '908297377698-pitsk9k2jl2d3e7u69bkieelu1ttc4ol.apps.googleusercontent.com',
    iosBundleId: 'com.example.lab8',
  );
}
