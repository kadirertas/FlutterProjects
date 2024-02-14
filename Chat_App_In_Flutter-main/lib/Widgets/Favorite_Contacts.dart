import 'package:chat_app/Model/Message_Model.dart';
import 'package:chat_app/Widgets/Chat_Screen.dart';
import 'package:flutter/material.dart';

class FavoriteContacts extends StatefulWidget {
  const FavoriteContacts({Key? key}) : super(key: key);

  @override
  State<FavoriteContacts> createState() => _FavoriteContactsState();
}

class _FavoriteContactsState extends State<FavoriteContacts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Padding(
        padding: EdgeInsets.only(left: 15),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Favorites.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => ChatScreen(
                                user: Favorites[index],
                              )));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 35.0,
                          backgroundImage:
                              AssetImage(Favorites[index].ImageUrl),
                        ),
                      ),
                      Text(
                        Favorites[index].Name,
                        style: TextStyle(
                            color: Colors.white38,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.8),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
