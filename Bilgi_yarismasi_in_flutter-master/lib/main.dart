import 'package:bilgi_yarismasi/main.dart';
import 'package:flutter/material.dart';

import 'Sorular.dart';

void main() {
  runApp(Bilgiyarismasi());
}

class Bilgiyarismasi extends StatefulWidget {
  @override
  State<Bilgiyarismasi> createState() => _BilgiyarismasiState();
}

class _BilgiyarismasiState extends State<Bilgiyarismasi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('BİLGİ TESTİMİZE HOŞ GELDİNİZ ',
              style: TextStyle(color: Colors.blue)),
          centerTitle: true,
        ),
        body: SafeArea(
          child: soruSayfasi(),
        ),
      ),
    );
  }
}

class soruSayfasi extends StatefulWidget {
  @override
  State<soruSayfasi> createState() => _soruSayfasiState();
}

class _soruSayfasiState extends State<soruSayfasi> {
  int dogrucevap = 0, yanliscevap = 0;

  List<Widget> secimler = [];
  Sorular Test1 = Sorular();

  void tiklama(bool cevaps) {
    if (Test1.SinavBittiMi()) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            // return object of type Dialog
            return AlertDialog(
              title: Text("Sınavımız Bitmiştir"),
              content: Text(
                  "Doğru Sayınız $dogrucevap \nYanlış Sayınız $yanliscevap"),
              actions: <Widget>[
                // usually buttons at the bottom of the dialog
                new TextButton(
                  child: new Text("Başadön"),
                  onPressed: () {
                    Navigator.of(context).pop();
                    dogrucevap = 0;
                    yanliscevap = 0;
                  },
                ),
              ],
            );
          });
      setState(() {
        secimler = [];
        Test1.testisifirla();
      });
    } else {
      setState(() {
        if (Test1.cevap() == cevaps) {
          secimler.add(dogruiconu);
          dogrucevap++;
        } else {
          secimler.add(yanlisiconu);
          yanliscevap++;
        }
        Test1.sonrakiSoru();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  Test1.getsorumetni(),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        Wrap(children: secimler),
        Expanded(
          flex: 1,
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                    onPressed: () {
                      tiklama(false);
                    },
                    child: Container(
                      child: Icon(
                        Icons.thumb_down,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      width: 175,
                      height: 55,
                      color: Colors.red,
                    )),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      tiklama(true);
                    },
                    child: Container(
                      child: Icon(
                        Icons.thumb_up,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      width: 175,
                      height: 55,
                      color: Colors.green,
                    )),
              )
            ],
          ),
        )
      ],
    );
  }

  var dogruiconu = Icon(Icons.mood, color: Colors.green, size: 50);
  var yanlisiconu = Icon(
    Icons.mood_bad,
    color: Colors.red,
    size: 50,
  );
}
