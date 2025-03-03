import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'l10n/generated/app_localizations.dart';

import 'views/home.dart';
import 'views/settings.dart';

import 'model/locale.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LocaleModel(),
      child: Consumer<LocaleModel>(
        builder:
            (context, localeModel, child) => MaterialApp(
              title: 'Recipes',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              ),
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              locale: localeModel.locale,
              routes: {
                '/': (context) => const Home(),
                '/settings': (context) => const Settings(),
              },
              initialRoute: '/',
            ),
      ),
    );
  }
}
