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
    apiKey: 'AIzaSyDgTzWLhSIS3uUUvfOpJBSypNg-ekNdT8g',
    appId: '1:925314268303:web:016b3f0a25b799c04c04fa',
    messagingSenderId: '925314268303',
    projectId: 'chat-app-ec454',
    authDomain: 'chat-app-ec454.firebaseapp.com',
    storageBucket: 'chat-app-ec454.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA-yeA68txVM52Ep1Myw_IIzYxBuI8MKrc',
    appId: '1:925314268303:android:1a472bc6f5e3f0904c04fa',
    messagingSenderId: '925314268303',
    projectId: 'chat-app-ec454',
    storageBucket: 'chat-app-ec454.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCyVVPAbZXFO1rtV9B8qpqD_qvOA9l7n5s',
    appId: '1:925314268303:ios:d1958e09743a5df24c04fa',
    messagingSenderId: '925314268303',
    projectId: 'chat-app-ec454',
    storageBucket: 'chat-app-ec454.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );
}
