// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:islami/provider/locale_provider.dart';

import 'package:islami/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class LocaleBottonSheet extends StatefulWidget {
  const LocaleBottonSheet({Key? key}) : super(key: key);

  @override
  State<LocaleBottonSheet> createState() => _LocaleBottonSheetState();
}

class _LocaleBottonSheetState extends State<LocaleBottonSheet> {
  @override
  Widget build(BuildContext context) {
    var localeProvider = Provider.of<LocaleProvider>(context);
    return Container(
      child: Column(
        children: [
          InkWell(
              onTap: () {
                localeProvider.changeLocale('en');
              },
              child: getLanguageWidget(
                  'English', localeProvider.currentLocale == 'en')),
          InkWell(
              onTap: () {
                localeProvider.changeLocale('ar');
              },
              child: getLanguageWidget(
                  'العربية', localeProvider.currentLocale == 'ar')),
        ],
      ),
    );
  }

  Widget getLanguageWidget(String title, bool isSelected) {
    if (isSelected) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
            Icon(
              Icons.check,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ],
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: Theme.of(context).colorScheme.onPrimary),
          ),
        ],
      ),
    );
  }
}
