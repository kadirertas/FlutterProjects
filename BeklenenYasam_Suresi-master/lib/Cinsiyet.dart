import 'package:flutter/material.dart';

class cinsiyet extends StatelessWidget {
  final String? cins;
  final IconData? ikon;
  final Color? renk;
  cinsiyet({this.ikon, this.renk, this.cins});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          ikon,
          size: 80,
          color: renk,
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            '$cins',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        )
      ],
    );
  }
}
