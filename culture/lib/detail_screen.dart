import 'package:culture/culture.dart';
import 'package:flutter/material.dart';

import 'favorite.dart';

class  DetailScreen extends StatelessWidget {
  final Culture culture;

  const DetailScreen({@required this.culture});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(culture.photo),
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          iconSize: 20.0,
                          onPressed: (){
                            Navigator.pop(context);
                          },
                        ),
                        FavoriteButton(),
                      ],
                    ),
                  ),
                ],
              ),

              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Text(
                  culture.tarian,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  culture.description,textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                height: 160,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: culture.imgrul.map((url) {
                      return Padding(
                        padding: EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(url),
                        ),
                      );
                    }).toList()
                ),
              )
            ]
        ),
      ),
    );
  }
}