import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const BugunNeYesem());
}

class BugunNeYesem extends StatelessWidget {
  const BugunNeYesem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            ' BUGÜN NE YESEM',
            style: TextStyle(fontSize: 28, color: Colors.black),
          ),
        ),
        body: YemekSayfam(),
      ),
    );
  }
}

class YemekSayfam extends StatefulWidget {
  @override
  State<YemekSayfam> createState() => _YemekSayfamState();
}

class _YemekSayfamState extends State<YemekSayfam> {
  int corbaNo = 1;

  int yemekNo = 1;

  int tatliNo = 1;

  List<String> Corba = [
    'Mercimek Çorbası',
    'Tarhana',
    'TavukSuyu',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'
  ];
  List<String> yemek = [
    'Karnıyarık ',
    'Kayseri Mantısı',
    ' Kuru Fasulye ',
    'İçli Köfte  ',
    'Kızarmış Balık'
  ];
  List<String> Tatli = [
    'Kadayıf',
    'Fıstıklı Baklava',
    'Fırın Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];

  int sirala() {
    int a = Random().nextInt(5) + 1;
    return a;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      corbaNo = sirala();
                    });
                  },
                  child: Image.asset('assets/images/corba_$corbaNo.jpg')),
            ),
          ),
          Text(
            Corba[corbaNo - 1],
            style: TextStyle(fontSize: 15, color: Colors.deepOrange),
          ),
          Container(
              width: 200, child: Divider(height: 15, color: Colors.black)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      yemekNo = sirala();
                    });
                  },
                  child: Image.asset('assets/images/yemek_$yemekNo.jpg')),
            ),
          ),
          Text(
            yemek[yemekNo - 1],
            style: TextStyle(fontSize: 15, color: Colors.deepOrange),
          ),
          Container(
              width: 200, child: Divider(height: 15, color: Colors.black)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      tatliNo = sirala();
                    });
                  },
                  child: Image.asset('assets/images/tatli_$tatliNo.jpg')),
            ),
          ),
          Text(
            Tatli[tatliNo - 1],
            style: TextStyle(
              fontSize: 15,
              color: Colors.deepOrange,
            ),
          ),
          Container(
              width: 200, child: Divider(height: 15, color: Colors.black)),
        ],
      ),
    );
  }
}
