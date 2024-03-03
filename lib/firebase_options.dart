// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyBWOuI9Av4PzHcAdNoXAVKA-UGQ8_DMVlQ',
    appId: '1:416784786632:web:6dced72a88c57e29dab1fd',
    messagingSenderId: '416784786632',
    projectId: 'tik-tok-clone-958bd',
    authDomain: 'tik-tok-clone-958bd.firebaseapp.com',
    storageBucket: 'tik-tok-clone-958bd.appspot.com',
    measurementId: 'G-3KJVVX5XBB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB-O_4_nykTpWqC35RkU2OtIIrPNPAq3IY',
    appId: '1:416784786632:android:6119babd60d62081dab1fd',
    messagingSenderId: '416784786632',
    projectId: 'tik-tok-clone-958bd',
    storageBucket: 'tik-tok-clone-958bd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAnjTR3aQvfmZQeG3xMisz2poCdlkDROgg',
    appId: '1:416784786632:ios:b2fc8e5515d840b9dab1fd',
    messagingSenderId: '416784786632',
    projectId: 'tik-tok-clone-958bd',
    storageBucket: 'tik-tok-clone-958bd.appspot.com',
    iosBundleId: 'com.example.takTok',
  );
}
