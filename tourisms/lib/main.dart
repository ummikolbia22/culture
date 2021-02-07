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
      title: 'Tourism',
      theme: ThemeData.dark(),
      //   primarySwatch: Colors.blue,
      //   visiualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      home: HomeScreen(),
    );
  }
}




