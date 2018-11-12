import 'package:flutter/material.dart';
import 'package:mychatapp/chatscreen.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      // backgroundColor: Colors.greenAccent,
      appBar: new AppBar(
        title: new Text("BARKININ PRIVATE FETOCU CHATI"),
        backgroundColor: Colors.black54,
      ),
      // body: new ChatScreen(),
      body: new Container(
        child: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Image(
              image: new AssetImage("assets/ben.jpg"),
              fit: BoxFit.cover,
              color: Colors.black54,
              colorBlendMode: BlendMode.darken,
            ),
            new ChatScreen(),
          ],
        ),
      ),
    );
  }
}