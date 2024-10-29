import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../model/locale.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context)!;

    var selectedLocale = Localizations.localeOf(context).toString();

    return Scaffold(
      appBar: AppBar(
        title: Text(t.pageSettingsTitle),
      ),
      body: Center(
        child: Column(
          children: [
            Consumer<LocaleModel>(
              builder: (context, localeModel, child) => DropdownButton(
                value: selectedLocale,
                items: [
                  DropdownMenuItem(
                    value: "en",
                    child: Text(t.pageSettingsInputLanguage("en")),
                  ),
                  DropdownMenuItem(
                    value: "es",
                    child: Text(t.pageSettingsInputLanguage("es")),
                  ),
                  DropdownMenuItem(
                    value: "ar",
                    child: Text(t.pageSettingsInputLanguage("ar")),
                  ),
                ],
                onChanged: (String? value) {
                  if (value != null) {
                    localeModel.set(Locale(value));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
