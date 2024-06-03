

import 'dart:io';

import 'package:acm/AuthScreen/Login.dart';
import 'package:acm/AuthScreen/Logout.dart';
import 'package:acm/HomeScreens/Dashboard.dart';
import 'package:acm/HomeScreens/approvalDetail.dart';
import 'package:acm/Splashscreen/Splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {HttpOverrides.global = MyHttpOverrides();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      home: SplashScreen(), // Set SplashScreen as the home screen
    );
  }
}
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context)
  { return super.createHttpClient(context)
    ..badCertificateCallback =
      (X509Certificate cert, String host, int port) => true; }
}