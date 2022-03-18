// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HadethTab extends StatelessWidget {
  List<Hadeth> myAhadeth = [];
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void readHadethFile() async {
    String fileContent =
        await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadeth = fileContent.trim().split("#");
    for (int i = 0; i < ahadeth.length; i++) {
      String hadeth1 = ahadeth[0];
      List<String> lines = hadeth1.split("\n");
      String title = lines[0];
      lines.removeAt(0);
      Hadeth hadeth = Hadeth(title, lines);
      myAhadeth.add(hadeth);
    }
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth(
    this.title,
    this.content,
  );
}
