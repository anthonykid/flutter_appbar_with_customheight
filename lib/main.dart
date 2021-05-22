import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //to make the banner debug gone
      home: Scaffold(
        appBar: PreferredSize(
          //using preferred size so we can put our preferred size
          preferredSize: Size.fromHeight(200), //for the appbar height
          child: AppBar(
            backgroundColor: Colors.green, //background color
            flexibleSpace: Positioned(
              //so the widget is close to the bottom and right
              bottom: 0, //making our widget have 0 space between bottom
              right: 0, //making our widget have 0 space between right
              child: Container(
                //so we can add margin, and our widget would not be very close with the edge
                margin: EdgeInsets.all(20),
                child: Text(
                  "Appbar With Custom Height", //the appbar text
                  style: TextStyle(
                      //the textstyle of the text on appbar
                      fontSize: 20, //the font size
                      color: Colors.white, //the colors of the text
                      fontWeight: FontWeight.w700), //making the text bold
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
