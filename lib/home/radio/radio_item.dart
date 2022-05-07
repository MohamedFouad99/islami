// ignore_for_file: prefer_const_constructors, must_be_immutable, unused_local_variable, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';

import 'model/radio_response.dart';

class RadioItem extends StatefulWidget {
  Radios item;
  Function play;
  Function pause;
  RadioItem(this.item, this.play, this.pause);

  @override
  State<RadioItem> createState() => _RadioItemState();
}

class _RadioItemState extends State<RadioItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            '${widget.item.name}',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    widget.play(widget.item.radioUrl);
                  },
                  icon: Icon(
                    Icons.play_arrow,
                    color: MyThemeData.lightPrimary,
                    size: 45,
                  )),
              IconButton(
                  onPressed: () {
                    widget.pause();
                  },
                  icon: Icon(
                    Icons.pause,
                    color: MyThemeData.lightPrimary,
                    size: 45,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
