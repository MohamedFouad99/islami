// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottonSheet extends StatefulWidget {
  const ThemeBottonSheet({Key? key}) : super(key: key);

  @override
  State<ThemeBottonSheet> createState() => _ThemeBottonSheetState();
}

class _ThemeBottonSheetState extends State<ThemeBottonSheet> {
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      child: Column(
        children: [
          InkWell(
              onTap: () {
                themeProvider.changeTheme(ThemeMode.light);
              },
              child: getThemeWidget(AppLocalizations.of(context)!.light,
                  !themeProvider.isDark())),
          InkWell(
              onTap: () {
                themeProvider.changeTheme(ThemeMode.dark);
              },
              child: getThemeWidget(
                  AppLocalizations.of(context)!.dark, themeProvider.isDark())),
        ],
      ),
    );
  }

  Widget getThemeWidget(String title, bool isSelected) {
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
