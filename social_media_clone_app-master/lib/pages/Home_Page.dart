import 'package:flutter/material.dart';
import 'package:social_media_clone/model/Friends.dart';
import 'package:social_media_clone/model/Posts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TimeLine",
          style: TextStyle(fontSize: 30, fontFamily: 'Eater'),
        ),
        backgroundColor: Color(0xFF251F1F),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                size: 35,
              ))
        ],
      ),
      backgroundColor: Color(0xFF251F1F),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: favorite.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10),
                        child: Container(
                          width: 80,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF3A3740),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(5),
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 3,
                                    color: Color(0XFFfe8057).withOpacity(0.5),
                                  ),
                                ),
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              favorite[index].imageUrl!),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Container(
                                height: 70,
                                child: RotatedBox(
                                  quarterTurns: 3,
                                  child: Text(
                                    favorite[index].name!,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white70),
                                  ),
                                ),
                              ),
                              Divider(
                                color: Color(0XFFfe8057).withOpacity(0.5),
                                height: 10,
                                indent: 5,
                                endIndent: 5,
                              )
                            ],
                          ),
                        ),
                      );
                    })),
            _buildPosts(0),
            _buildPosts(1),
            _buildPosts(2),
            _buildPosts(3),
          ],
        ),
      ),
    );
  }
}

_buildPosts(int index) {
  return Container(
      height: 350,
      margin: EdgeInsets.all(15),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                          width: 3,
                          color: Color(0XFFfe8057).withOpacity(0.5),
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                                image:
                                    AssetImage(posts[index].friend!.imageUrl!),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ],
                )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                posts[index].friend!.name!,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white54,
                    letterSpacing: 1.2),
              ),
            )),
            Text(
              posts[index].timePosted!,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white54),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          height: 140,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(posts[index].imageUrl!),
                  fit: BoxFit.cover)),
        ),
        Container(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: <Widget>[
                    Icon(Icons.mode_comment, size: 30, color: Colors.white54),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      posts[index].comments!,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white54,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '|',
                      style: TextStyle(fontSize: 30, color: Colors.white54),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.share, size: 30, color: Colors.white54),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      posts[index].shared!,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white54,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      posts[index].like!,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white54,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.thumb_up, size: 30, color: Colors.white54),
                  ],
                )
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 60,
              child: Text(
                posts[index].description!,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white54,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )
      ]));
}
