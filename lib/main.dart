import 'dart:io';
import 'package:enspd/app_theme.dart';
import 'package:enspd/fitness_app/fitness_app_home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() async {
 // WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
       options: const FirebaseOptions(
   apiKey: "AIzaSyBhYf-0upqW_29GYMKjGhx-EQfYfLJvFo4",
  authDomain: "projet-enspd.firebaseapp.com",
  databaseURL: "https://projet-enspd-default-rtdb.asia-southeast1.firebasedatabase.app",
  projectId: "projet-enspd",
  storageBucket: "projet-enspd.appspot.com",
  messagingSenderId: "949716100759",
  appId: "1:949716100759:web:fe31ec6c84dc15eed46bd2",
  measurementId: "G-61VVJLES9J"
));
   
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
          !kIsWeb && Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: 'ENSPD',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: AppTheme.textTheme,
        platform: TargetPlatform.iOS,
      ),
      home: FitnessAppHomeScreen(),
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
