// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable, prefer_is_empty

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/sura_details/item_verse.dart';

class SuraDetailsScreen extends StatefulWidget {
  String name;
  int index;
  SuraDetailsScreen({required this.index, required this.name});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    if (verses.isEmpty) {
      loadFile(widget.index);
    }
    return Stack(children: [
      Image.asset(
        'assets/images/bg3.png',
        height: double.infinity,
        fit: BoxFit.fill,
        width: double.infinity,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            widget.name,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: verses.length == 0
            ? Center(child: CircularProgressIndicator())
            : ListView.separated(
                separatorBuilder: (buildcontext, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    height: 1,
                    color: Theme.of(buildcontext).primaryColor,
                  );
                },
                itemBuilder: (buildcontext, index) {
                  return ItemVerse(verses[index]);
                },
                itemCount: verses.length,
              ),
      ),
    ]);
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split("/n");
    verses = lines;
    setState(() {});
  }
}
