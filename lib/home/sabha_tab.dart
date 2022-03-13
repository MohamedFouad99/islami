// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  List<String> tasbehList = [
    'سبحان الله',
    'الحمد لله',
    'الله أكبر',
    'لاأله ألا الله',
    'لا حول ولا قوة ألا بالله'
  ];
  int index = 0;
  double angle = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset('assets/images/sebha_header.png'),
                InkWell(
                  onTap: () {
                    onTasbehClick();
                  },
                  child: Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.111),
                      child: Transform.rotate(
                          angle: angle,
                          child: Image.asset('assets/images/sebha_body.png'))),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'عدد التسبيحات',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xffB7935F),
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                '$counter',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: MyThemeData.lightPrimary,
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                tasbehList[index],
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onTasbehClick() {
    counter++;
    setState(() {
      if (counter % 33 == 0) {
        index++;
      }
      if (counter % 165 == 0) {
        index = 0;
      }
      angle += 20;
    });
  }
}
