// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get pageHomeTitle => 'Recetas';

  @override
  String get pageHomeDrawerHeader => 'Recetas';

  @override
  String get pageHomeDrawerListTileSettings => 'Ajustes';

  @override
  String pageHomeRecipeAuthor(String name) {
    return 'por $name';
  }

  @override
  String pageHomeRecipeCreated(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMd(localeName);
    final String dateString = dateDateFormat.format(date);

    return 'creado $dateString';
  }

  @override
  String pageHomeRecipeVotes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count votos',
      one: '$count voto',
    );
    return '$_temp0';
  }

  @override
  String get pageHomeRecipeSaladName => 'Ensalada';

  @override
  String get pageHomeRecipeSaladDescription => 'Ensalada de verduras frescas llena de vitaminas, fibra y minerales.';

  @override
  String get pageHomeRecipeRiceName => 'Arroz';

  @override
  String get pageHomeRecipeRiceDescription => 'Arroz con verduras y frijoles. Una comida nutritiva alta en fibra.';

  @override
  String get pageHomeRecipeFriedEggsName => 'Huevos fritos';

  @override
  String get pageHomeRecipeFriedEggsDescription => 'Una comida llena de proteínas y minerales.';

  @override
  String get pageSettingsTitle => 'Ajustes';

  @override
  String pageSettingsInputLanguage(String locale) {
    String _temp0 = intl.Intl.selectLogic(
      locale,
      {
        'ar': 'عربي',
        'en': 'English',
        'es': 'Español',
        'other': '-',
      },
    );
    return '$_temp0';
  }
}
