import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class S {
  static const ru = Locale('ru');

  static bool isRu(Locale locale) => locale == ru;

  static const supportedLocales = [ru];

  static const localizationDelegates = <LocalizationsDelegate>[
    AppLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  static AppLocalizations of(BuildContext context) =>
      AppLocalizations.of(context)!;
}
