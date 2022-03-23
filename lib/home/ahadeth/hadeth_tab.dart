// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'item_hadeth_name.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> myAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (myAhadeth.isEmpty) {
      readHadethFile();
    }
    return Column(
      children: [
        Image.asset('assets/images/hadeth_header.png'),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Text(
          AppLocalizations.of(context)!.ahadeth,
          style: Theme.of(context).textTheme.headline1,
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Expanded(
            child: ListView.separated(
          itemCount: myAhadeth.length,
          itemBuilder: (context, index) {
            return ItemHadethName(myAhadeth[index]);
          },
          separatorBuilder: (buildContext, index) {
            return Divider(
              color: Theme.of(context).primaryColor,
              thickness: 3,
            );
          },
        ))
      ],
    );
  }

  void readHadethFile() async {
    String fileContent =
        await rootBundle.loadString("assets/files2/ahadeth.txt");
    List<String> ahadeth = fileContent.trim().split("#\r\n");
    for (int i = 0; i < ahadeth.length; i++) {
      String allHadeth = ahadeth[i];
      if (allHadeth.isEmpty) continue;
      allHadeth.trim();
      print(allHadeth);
      print('------------------------------------------');
      List<String> lines = allHadeth.split('\n');
      if (lines[0].isEmpty) {
        print('in empty line condition');
        lines.removeAt(0);
      }
      String title = lines[0];
      lines.removeAt(0);
      Hadeth hadeth = Hadeth(title, lines);
      myAhadeth.add(hadeth);
    }
    setState(() {});
  }
}

class Hadeth {
  String title;
  List<String> content;
  Hadeth(this.title, this.content);
}
