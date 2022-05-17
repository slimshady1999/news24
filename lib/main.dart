import 'dart:io';

import 'package:flutter/material.dart';
import 'package:news24/views/homepage.dart';
import 'views/splashpage.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashPage(),
  ));
}
