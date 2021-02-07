import 'package:culture/dummy.dart';
import 'package:flutter/material.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Budaya Indonesia"),
      ),
      body:
      ListView(children: cultureList.map((place) {
        return FlatButton(
          onPressed: () {
            //pindah halaman//
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(culture: place);
            }));
          },


          child: Card(
            child: Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Image.asset(place.photo)),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(place.tarian, style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(place.address)
                        ],
                      ),
                    )
                )
              ],
            ),
          ),
        );
      }).toList()
      ),
    );
  }
}