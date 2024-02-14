import 'package:flutter/material.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  String secilibuton = "on";
  String secilibuton2 = "1";
  String secilibuton3 = "1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_back,
                              size: 35,
                            )),
                        Container(
                          width: 250,
                          height: 35,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.grey),
                              borderRadius: BorderRadius.circular(15)),
                          child: TextField(
                            decoration: InputDecoration(
                                icon: Icon(Icons.search),
                                hintText: "search ",
                                border: InputBorder.none),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.reset_tv_outlined,
                              size: 35,
                            )),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 550,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.grey),
                          borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 18.0),
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 18,
                                            backgroundImage:
                                                AssetImage("assets/logo.jpg"),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("Meryo Giyim  ")
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50.0),
                                  child: Container(
                                    width: 490,
                                    height: 430,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/women.jpg"),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18, bottom: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 0),
                                        child: Container(
                                          width: 85,
                                          height: 39,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 2,
                                                  color: Colors.black),
                                              borderRadius:
                                                  BorderRadius.circular(35)),
                                          child: Center(
                                            child: Text(
                                              "3d",
                                              style: TextStyle(
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 68.0, bottom: 5),
                                        child: Container(
                                          width: 58,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(9),
                                              border: Border.all(
                                                  width: 2,
                                                  color: Colors.grey)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    secilibuton2 = "1";
                                                  });
                                                },
                                                child: Container(
                                                  width: 15,
                                                  height: 15,
                                                  decoration: BoxDecoration(
                                                      color: secilibuton2 == "1"
                                                          ? Colors.orange
                                                          : Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      border: Border.all(
                                                          width: 2,
                                                          color: Colors.grey)),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    secilibuton2 = "2";
                                                  });
                                                },
                                                child: Container(
                                                  width: 15,
                                                  height: 15,
                                                  decoration: BoxDecoration(
                                                      color: secilibuton2 == "2"
                                                          ? Colors.orange
                                                          : Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      border: Border.all(
                                                          width: 2,
                                                          color: Colors.grey)),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 18, right: 28.0),
                                    child: Icon(
                                      Icons.grade,
                                      color: Colors.orange,
                                      size: 35,
                                    )),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 26.0, bottom: 6),
                                      child: Container(
                                        width: 35,
                                        height: 18,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            border: Border.all(
                                                width: 2, color: Colors.grey)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CircleAvatar(
                                              radius: 7,
                                            ),
                                            CircleAvatar(
                                              radius: 7,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 18.0),
                                      child: Text(
                                        "Renkler ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            right: 28.0, bottom: 6),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.chat_outlined,
                                              color: Colors.orange,
                                              size: 40,
                                            ))),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 18.0),
                                      child: Text(
                                        "Yorumlar ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            right: 28.0, bottom: 6),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.share,
                                              color: Colors.orange,
                                              size: 40,
                                            ))),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 18.0),
                                      child: Text(
                                        "Paylaş ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            right: 28.0, bottom: 26),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.chevron_right,
                                              color: Colors.orange,
                                              size: 40,
                                            ))),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundImage:
                                        AssetImage("assets/logo.jpg"),
                                  ),
                                  Text("Meryo Giyim  ")
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 18.0),
                                child: Container(
                                  width: 85,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                          width: 2, color: Colors.orange)),
                                  child: Center(
                                    child: Text(
                                      "sepete ekle",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 28.0),
                              child: Text(
                                  "oversize Panmuklu Rahat Baskısız Sade Tshort   "),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 34.0),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.expand_more,
                                      size: 45, color: Colors.orange)),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 28.0),
                              child: Text(
                                "Ayrıntılar... ",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundImage:
                                        AssetImage("assets/logo.jpg"),
                                  ),
                                  Text("Meryo Giyim  ")
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 18.0),
                                child: Container(
                                  width: 85,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                          width: 2, color: Colors.orange)),
                                  child: Center(
                                    child: Text(
                                      "sepete ekle",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 28.0),
                              child: Text(
                                  "oversize Panmuklu Rahat Baskısız Sade Tshort   "),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 34.0),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.expand_more,
                                      size: 45, color: Colors.orange)),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 28.0),
                              child: Text(
                                "Ayrıntılar... ",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Ana Sayfa',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Şepet ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                /* Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Discover()));*/
              },
              icon: Icon(Icons.add),
            ),
            label: 'Keşfet ',
          ),
        ],
      ),
    );
  }
}
