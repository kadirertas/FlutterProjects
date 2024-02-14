import 'package:flutter/material.dart';

import '../Model/Message_Model.dart';
import '../main.dart';
import 'Chat_Screen.dart';

class MenuChat extends StatefulWidget {
  const MenuChat({Key? key}) : super(key: key);

  @override
  State<MenuChat> createState() => _MenuChatState();
}

class _MenuChatState extends State<MenuChat> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor.withOpacity(0.2),
          ),
          child: ListView.builder(
              padding: EdgeInsets.only(top: 10),
              itemCount: chats.length,
              itemBuilder: (BuildContext context, int index) {
                final Message chate = chats[index];
                return Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    left: 15,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ChatScreen(
                                    user: chate.sender,
                                  )));
                    },
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: chate.unread
                              ? containerBackground.withOpacity(0.3)
                              : Colors.transparent),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 40.0,
                              backgroundImage:
                                  AssetImage(chate.sender.ImageUrl),
                            ),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: EdgeInsets.only(left: 15, top: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      chate.sender.Name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          letterSpacing: 0.8,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      chate.text,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Colors.grey,
                                          letterSpacing: 0.8),
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30.0, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text(chate.time,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.white24)),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      chate.unread
                                          ? Container(
                                              height: 25,
                                              width: 45,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Colors.red),
                                              child: Center(
                                                child: Text(
                                                  "new",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            )
                                          : Text("")
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
