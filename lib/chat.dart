import 'package:flutter/material.dart';
import 'main.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            "Messages",
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            color: Colors.white,
            onPressed: (){},
          ),
        ],
      ),

      bottomNavigationBar: BottomSection() ,

    );
  }
}

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 60,
      child: Container(
        child: Row(
          children: [
            Container(
              width: 250,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.emoji_emotions),
                    color: Colors.white,
                  ),
                  IconButton(
                    padding: EdgeInsets.only(left: 180),
                    onPressed: (){},
                    icon: Icon(Icons.mic),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Container(
              child:  IconButton(
                onPressed: (){},
                icon: Icon(Icons.send),
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
