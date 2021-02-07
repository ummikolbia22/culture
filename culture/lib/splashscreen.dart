import 'dart:async';

import 'package:culture/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async{
    var duration = const Duration(seconds: 3);
    return Timer(duration,(){
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => (HomeScreen()),
          )
      );
    });

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center ,
            crossAxisAlignment: CrossAxisAlignment.center ,
            children: <Widget>[
              Icon(
                Icons.api_sharp,
                size: 100.0,
                color: Colors.white,

              ),

              SizedBox(height: 24.0,),
              Text("Budaya Indonesia",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              )
            ],
          )
      ),
    );
  }
}
