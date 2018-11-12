import 'package:flutter/material.dart';

const String _name = 'Barkın';

class ChatMessage extends StatelessWidget {
  final String text;
  ChatMessage({this.text});
  
  @override
  Widget build(BuildContext context){
    return new Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: <Widget>[
          new Container(
            margin: EdgeInsets.only(right: 10.0),
            child: new CircleAvatar(child: new Text(_name[0]),backgroundColor: Colors.grey,foregroundColor: Colors.white,),
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(_name, style: TextStyle(color: Colors.white)),
              new Container(
                margin: EdgeInsets.only(top: 5.0),
                child: new Text(text,style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}