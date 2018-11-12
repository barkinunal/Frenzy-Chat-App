import 'package:flutter/material.dart';
import 'package:mychatapp/chatmessage.dart';

class ChatScreen extends StatefulWidget{
  @override
  State createState() => new ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  TextEditingController _textEditingController = new TextEditingController();
  List<ChatMessage> _messages = new List<ChatMessage>();

  void _handleSubmit(String text){
    _textEditingController.clear();
    ChatMessage message = new ChatMessage(text: text);

    if (text != '') {
      setState(() {
        _messages.insert(0, message);
      });
    } 
  }

  Widget _textComposerWidget(){
    return new IconTheme(
      data: IconThemeData(color: Colors.black54,),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                decoration: InputDecoration.collapsed(hintText: "Write something..."),
                controller: _textEditingController,
                onSubmitted: _handleSubmit,
              ),
            ),
            new Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: new Icon(Icons.send),
                onPressed: () => _handleSubmit(_textEditingController.text),
              ),

            ),
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Flexible(
          child: new ListView.builder(
            padding: EdgeInsets.all(8.0),
            reverse: true,
            itemBuilder: (_,int index) => _messages[index],
            itemCount: _messages.length,
          ),
        ),
        new Divider(height: 1.0,),
        new Container(
          decoration: BoxDecoration(color: Theme.of(context).cardColor),
          child: _textComposerWidget(),
        ),
      ],
    );
  }


}