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
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDN3UejU5ElLHDLSZlSedE_RlKoPo8zrr4',
    appId: '1:816702698850:android:7ee321fbfea80e1715e83b',
    messagingSenderId: '816702698850',
    projectId: 'learnable-app',
    storageBucket: 'learnable-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAcDr3Uac6G55vJPslF3Cup07WD6ntIsQk',
    appId: '1:816702698850:ios:84750a8e20de01bf15e83b',
    messagingSenderId: '816702698850',
    projectId: 'learnable-app',
    storageBucket: 'learnable-app.appspot.com',
    iosClientId: '816702698850-fiflfp84huiq7uspcq2iia53vd5260q0.apps.googleusercontent.com',
    iosBundleId: 'com.learnable.ios',
  );
}
