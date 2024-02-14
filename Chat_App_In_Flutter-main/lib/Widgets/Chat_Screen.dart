import 'package:chat_app/Model/Message_Model.dart';
import 'package:chat_app/main.dart';
import 'package:flutter/material.dart';

import '../Model/User_Model.dart';

class ChatScreen extends StatefulWidget {
  late final User user;

  ChatScreen({required this.user});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Message message, bool isMe) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        decoration: BoxDecoration(
            color: isMe
                ? backgroundColor.withOpacity(0.5)
                : backgroundColor.withOpacity(0.3),
            borderRadius: isMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10))
                : BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10))),
        margin: isMe
            ? EdgeInsets.only(top: 8, bottom: 8, left: 80)
            : EdgeInsets.only(top: 8, bottom: 8, right: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              message.time,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white24),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              message.text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  letterSpacing: 1.2,
                  color: Colors.white70),
            )
          ],
        ));
  }

  _buildSendMessge() {
    return Container(
      height: 70,
      color: containerBackground,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Container(
          decoration: BoxDecoration(
              color: backgroundColor, borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.photo_library,
                      size: 25, color: Colors.white54)),
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: " Send your Message ",
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white12,
                        letterSpacing: 1.2)),
              )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send, size: 25, color: Colors.white54)),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Text(
          widget.user.Name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz, size: 40, color: Colors.grey))
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    color: containerBackground,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
                child: ListView.builder(
                    reverse: true,
                    padding: EdgeInsets.only(top: 20),
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Message mesage = messages[index];
                      bool isMe = currentUser.ID == mesage.sender.ID;
                      return _buildMessage(mesage, isMe);
                    }),
              ),
            ),
          ),
          _buildSendMessge(),
        ],
      ),
    );
  }
}
