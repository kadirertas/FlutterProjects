import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: dart()));
  }
}

class dart extends StatefulWidget {
  @override
  State<dart> createState() => _dartState();
}

class _dartState extends State<dart> {
  String seciliButon = ' ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('dart ile ternarory OPERATOR'),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  setState(() {
                    seciliButon = 'SAĞ';
                  });
                },
                child: Container(
                  child:
                      Text(seciliButon == 'SAĞ' ? 'AKTİF KUTU' : 'PASİF KUTU'),
                  width: 120,
                  height: 250,
                  color: seciliButon == 'SAĞ' ? Colors.yellow : Colors.blueGrey,
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    seciliButon = 'SOL';
                  });
                },
                child: Container(
                    child: Text(
                        seciliButon == 'SOL' ? 'AKTİF KUTU' : 'PASİF KUTU'),
                    width: 120,
                    height: 250,
                    color:
                        seciliButon == 'SOL' ? Colors.yellow : Colors.blueGrey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
