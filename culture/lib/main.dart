import 'package:culture/splashscreen.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Culture',
      theme: ThemeData.light(),
      //   primarySwatch: Colors.blue,
      //   visiualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      home: SplashScreen(),

    );
  }
}