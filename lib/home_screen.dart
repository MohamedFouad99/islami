// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:islami/home/hadeth_tab.dart';
import 'package:islami/home/quran/quran_tab.dart';
import 'package:islami/home/radio_tab.dart';
import 'package:islami/home/sabha_tab.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [QuranTab(), HadethTab(), SebhaTab(), RadioTab()];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // AssetImage('assets/images/bg3.png',
        //     height: double.infinity, fit: BoxFit.fill, width: double.infinity),
        Image.asset(
          'assets/images/bg3.png',
          height: double.infinity,
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor,
            ),
            child: BottomNavigationBar(
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              currentIndex: currentIndex,
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/ic_moshaf.png'),
                  ),
                  label: 'Quran',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/ic_sebha.png'),
                  ),
                  label: 'Sebha',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/ic_hadeth.png'),
                  ),
                  label: 'Hadeth',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/ic_radio.png'),
                  ),
                  label: 'Radio',
                ),
              ],
            ),
          ),
          body: tabs[currentIndex],
        ),
      ],
    );
  }
}
