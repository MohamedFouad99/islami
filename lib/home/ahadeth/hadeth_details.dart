// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors, prefer_is_empty, must_be_immutable

import 'package:flutter/material.dart';
import 'package:islami/home/ahadeth/hadeth_tab.dart';

import 'package:islami/provider/theme_provider.dart';
import 'package:islami/sura_details/item_verse.dart';
import 'package:provider/provider.dart';

class HadethDetails extends StatelessWidget {
  Hadeth hadeth;
  HadethDetails(this.hadeth);
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    verses = hadeth.content;
    return Stack(children: [
      Image.asset(
        themeProvider.getBackgroundImage(),
        height: double.infinity,
        fit: BoxFit.fill,
        width: double.infinity,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            hadeth.title,
            style: Theme.of(context).textTheme.headline1,
          ),
          centerTitle: true,
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
}
