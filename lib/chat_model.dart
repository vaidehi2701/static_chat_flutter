import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

const String _name = "Flash";

class ChatMessage extends StatelessWidget {
  final String text;
  ChatMessage({this.text});

  @override
  Widget build(BuildContext context) {

    double pixelRatio = MediaQuery.of(context).devicePixelRatio;
    double px = 1 / pixelRatio;

    //style for user chat
    BubbleStyle styleMe = BubbleStyle(
      nip: BubbleNip.rightTop,
      color: Color.fromARGB(255, 225, 255, 199),
      elevation: 1 * px,
      margin: BubbleEdges.only(top: 8.0, left: 50.0),
      alignment: Alignment.topRight,
    );

    return new Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:[
            Expanded(
              child: Bubble(
                style: styleMe,
                child: Text(text,
                  maxLines: 3,
                  style: TextStyle(
                  color: Colors.black
                ),),
              ),
            ),
            SizedBox(width: 10),
            CircleAvatar(
              backgroundColor: Colors.red,
              child: Text(_name[0],style: TextStyle(
                  color: Colors.white
              ),),
            )


          ],
        ),
      ),
    );
  }
}
