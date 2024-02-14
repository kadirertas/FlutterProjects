import 'package:flutter/material.dart';
import 'package:sure/user_data.dart';
import 'Hesap.dart';
import 'InputPage.dart';

class Sonuc extends StatelessWidget {
  final Userdata _userdata;
  Sonuc(this._userdata);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('SONUÇ SAYFASI '),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'HESAPLANAN YAŞ DEGERİ ',
                      style: TextStyle(fontSize: 25),
                    ),
                  )),
                  Center(
                      child: Text(
                    hesap(_userdata).hesaplama().round().toString(),
                    style: TextStyle(fontSize: 25),
                  )),
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: 50,
                      child: Center(child: Text('BASADON ')),
                    )))
          ],
        ),
      ),
    );
  }
}
