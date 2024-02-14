import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sure/Sonuc.dart';
import 'package:sure/user_data.dart';

import 'Cinsiyet.dart';
import 'Widget.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? secilibuton;
  double icilencigara = 0.0;
  double sporgunu = 0.0;
  int Boy = 170;
  int Kilo = 65;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'YAŞAM BEKLENTİSİ',
            style: TextStyle(color: Colors.black54),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Mywidget(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[buildRowOutlineButton(deger: 'Boy')],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Mywidget(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        buildRowOutlineButton(
                          deger: 'Kilo',
                        )
                      ],
                    )),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Mywidget(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Haftada Kaç Gün Spor Yapıyorsunuz ',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${sporgunu.round()}',
                              style: TextStyle(
                                  fontSize: 35, color: Colors.lightBlue),
                            ),
                            Slider(
                              min: 0.0,
                              max: 7.0,
                              divisions: 7,
                              value: sporgunu,
                              onChanged: (double newValue) {
                                setState(() {
                                  sporgunu = newValue;
                                });
                              },
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Mywidget(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Günlük Kaç Sigara İçiyorsunuz ',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${icilencigara.round()}',
                            style: TextStyle(
                                fontSize: 35, color: Colors.lightBlue),
                          ),
                          Slider(
                            min: 0.0,
                            max: 30.0,
                            value: icilencigara,
                            label: icilencigara.round().toString(),
                            onChanged: (double newValue) {
                              setState(() {
                                icilencigara = newValue;
                              });
                            },
                          ),
                        ],
                      ))),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            secilibuton = 'kadin';
                          });
                        },
                        child: Mywidget(
                          renk: secilibuton == 'kadin'
                              ? Colors.cyanAccent
                              : Colors.white,
                          child: cinsiyet(
                            ikon: FontAwesomeIcons.venus,
                            renk: Colors.red,
                            cins: 'KADIN',
                          ),
                        ),
                      )),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          secilibuton = 'erkek';
                        });
                      },
                      child: Mywidget(
                        renk: secilibuton == 'erkek'
                            ? Colors.cyanAccent
                            : Colors.white,
                        child: cinsiyet(
                          ikon: FontAwesomeIcons.mars,
                          renk: Colors.blue,
                          cins: 'ERKEK',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ButtonTheme(
              minWidth: double.infinity,
              height: 50,
              child: Container(
                color: Colors.white,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Sonuc(Userdata(
                                    Kilo: Kilo,
                                    Boy: Boy,
                                    secilibuton: secilibuton,
                                    icilencigara: icilencigara,
                                    sporgunu: sporgunu,
                                  ))));
                    },
                    child: Text(
                      'HESAPLA',
                    )),
              ),
            )
          ],
        ));
  }

  Row buildRowOutlineButton({String? deger, int sayi = 0}) {
    return Row(
      children: <Widget>[
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            '$deger',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            deger == 'Boy' ? Boy.toString() : Kilo.toString(),
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          children: <Widget>[
            Container(
              width: 55,
              height: 45,
              child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      deger == 'Boy' ? Boy++ : Kilo++;
                    });
                  },
                  child: Icon(FontAwesomeIcons.plus, size: 30)),
            ),
            Divider(
              height: 15,
            ),
            Container(
              width: 55,
              height: 45,
              child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      deger == 'Boy' ? Boy-- : Kilo--;
                    });
                  },
                  child: Icon(FontAwesomeIcons.minus, size: 30)),
            )
          ],
        )
      ],
    );
  }
}
