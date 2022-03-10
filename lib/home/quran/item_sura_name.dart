// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:islami/sura_details/sura_details.dart';

class ItemSuraName extends StatelessWidget {
  String name;
  int index;
  ItemSuraName(
    this.name,this.index
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => SuraDetailsScreen(name: name,index: index,)));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
    );
  }
}
