import 'package:flutter/material.dart';

class Mywidget extends StatelessWidget {
  final Color renk;
  final Widget? child;
  Mywidget({this.renk = Colors.white, this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(8),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: renk),
    );
  }
}
