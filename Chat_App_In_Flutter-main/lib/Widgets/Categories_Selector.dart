

import 'package:flutter/material.dart';

class CategoriesSelector extends StatefulWidget {
  const CategoriesSelector({Key? key}) : super(key: key);

  @override
  State<CategoriesSelector> createState() => _CategoriesSelectorState();
}

class _CategoriesSelectorState extends State<CategoriesSelector> {

  int SelectedIndex=0 ;
  final List<String> categories = ['Messages', 'Online', 'Groups', 'Requests'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90 ,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
            itemCount: categories.length,
          itemBuilder:(BuildContext context , int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20),
            child:
            GestureDetector(
              onTap: () {
                setState(() {
                  SelectedIndex=index;
                });
              },
              child: Text(
                categories[index],
                style: TextStyle(
                 fontSize: 28,fontWeight: FontWeight.bold,
                color: index == SelectedIndex ? Color(0x55CFD8DC) : Colors.white,
                  letterSpacing: 1
                ),

              ),
            ),
          );
          } ),

    );
  }
}
