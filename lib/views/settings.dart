import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SettingsState();
  }
}

class _SettingsState extends State<Settings> {
  String selectedLanguage = "en";

  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(t.pageSettingsTitle),
      ),
      body: Center(
        child: Column(
          children: [
            DropdownButton(
                value: selectedLanguage,
                items: [
                  DropdownMenuItem(
                    child: Text(t.pageSettingsInputLanguage("en")),
                    value: "en",
                  ),
                  DropdownMenuItem(
                    child: Text(t.pageSettingsInputLanguage("es")),
                    value: "es",
                  ),
                  DropdownMenuItem(
                    child: Text(t.pageSettingsInputLanguage("ar")),
                    value: "ar",
                  ),
                ],
                onChanged: (String? language) {
                  setState(() {
                    selectedLanguage = language!;
                  });
                })
          ],
        ),
      ),
    );
  }
}
