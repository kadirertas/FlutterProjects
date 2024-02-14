import 'package:flutter/material.dart';
import 'package:untitled/Shoping.dart';
import 'package:untitled/Discover.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String secilibuton = "18-65";
  String secilibuton2 = "erkek";
  String secilibuton3 = "of";
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Image.asset("assets/logo.jpg"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.person,
              color: Colors.orange,
              size: 28,
            ),
          )
        ],
        title: Text(
          "MeryoMela",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 1,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 26.0),
                  child: Text(
                    "Yaş Aralığınız ",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 21,
                ),
                Center(
                  child: Container(
                    width: 228,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              secilibuton = "0-17";
                            });
                          },
                          child: Container(
                            width: 109,
                            height: 39,
                            decoration: BoxDecoration(
                                color: secilibuton == "0-17"
                                    ? Colors.orange
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(child: Text("0-17")),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              secilibuton = "18-65";
                            });
                          },
                          child: Container(
                            width: 109,
                            height: 39,
                            decoration: BoxDecoration(
                                color: secilibuton == "18-65"
                                    ? Colors.orange
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(child: Text("18-65")),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28.0),
                  child: Text(
                    "Cinsiyetiniz ",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 21,
                ),
                Center(
                  child: Container(
                    width: 228,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              secilibuton2 = "kadın";
                            });
                          },
                          child: Container(
                            width: 109,
                            height: 39,
                            decoration: BoxDecoration(
                                color: secilibuton2 == "kadın"
                                    ? Colors.orange
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(child: Text("kadın")),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              secilibuton2 = "erkek";
                            });
                          },
                          child: Container(
                            width: 109,
                            height: 39,
                            decoration: BoxDecoration(
                                color: secilibuton2 == "erkek"
                                    ? Colors.orange
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(child: Text("erkek")),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0),
                      child: Text(
                        "Yağ Oranınız  ",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 28.0),
                      child: Container(
                        width: 87,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(width: 2, color: Colors.orange)),
                        child: Center(
                            child: Text(
                          "Ayrıntılar",
                          style: TextStyle(fontSize: 10),
                        )),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 21,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Category(oran: "%6-12", status: "Sporcu"),
                    Category(oran: "%13-18", status: "Formda"),
                    Category(oran: "%19-24", status: "Yüksek"),
                    Category(oran: "%25-35", status: "Kilolu"),
                    Category(oran: "%35+", status: "Obez"),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 26, top: 19.0, bottom: 31),
                  child: Text(
                    "Genel Bilgiler",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 108,
                        height: 48,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(width: 2, color: Colors.orange)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              "Bel",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text("$_currentSliderValue cm",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: 250,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("0",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text("200 cm ",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                        Slider(
                            value: _currentSliderValue,
                            max: 200,
                            divisions: 5,
                            label: _currentSliderValue.toString(),
                            onChanged: (double value) {
                              setState(() {
                                _currentSliderValue = value;
                              });
                            }),
                      ],
                    )
                  ],
                )
              ],
            );
          }),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Ana Sayfa',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Discover()));
              },
              icon: Icon(Icons.add),
            ),
            label: 'Şepet ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Shoping()));
              },
              icon: Icon(Icons.shopping_cart),
            ),
            label: 'Keşfet ',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Ana Sayfa',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Şepet ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.person),
            ),
            label: 'Keşfet ',
          ),
        ],
      ),
    );
  }

  Center Category({required String oran, required String status}) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 28.0),
        child: Container(
          width: 338,
          height: 48,
          decoration: BoxDecoration(
              color: Color(0xFF242242242),
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: Icon(
                  Icons.square,
                  color: Colors.orange,
                  size: 11,
                ),
              ),
              Text(
                oran,
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              Text(
                status,
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
              ),
              Center(
                child: Container(
                  width: 48,
                  height: 28,
                  decoration: BoxDecoration(
                    color: secilibuton3 == "on" ? Colors.white : Colors.white54,
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            secilibuton3 = "of";
                          });
                        },
                        child: Container(
                          width: 19,
                          height: 19,
                          decoration: BoxDecoration(
                              color: secilibuton3 == "of"
                                  ? Colors.orange
                                  : Colors.white70,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            secilibuton3 = "on";
                          });
                        },
                        child: Container(
                          width: 19,
                          height: 19,
                          decoration: BoxDecoration(
                              color: secilibuton3 == "on"
                                  ? Colors.orange
                                  : Colors.white70,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
