// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:islami/home/setting/theme_botton_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/locale_provider.dart';
import 'package:islami/provider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'locale_bottomsheet.dart';

class Setting extends StatefulWidget {
  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    var localeProvider = Provider.of<LocaleProvider>(context);
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.theme),
          SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              showThemeButtonSheet();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Theme.of(context).primaryColor),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(themeProvider.isDark()
                  ? AppLocalizations.of(context)!.dark
                  : AppLocalizations.of(context)!.light),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(AppLocalizations.of(context)!.language),
          SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Theme.of(context).primaryColor),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                  localeProvider.currentLocale == 'en' ? 'English' : 'العربية'),
            ),
          ),
        ],
      ),
    );
  }

  void showThemeButtonSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return ThemeBottonSheet();
        });
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return LocaleBottonSheet();
        });
  }
}
