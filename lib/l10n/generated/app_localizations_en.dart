// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get pageHomeTitle => 'Recipes';

  @override
  String get pageHomeDrawerHeader => 'Recipes';

  @override
  String get pageHomeDrawerListTileSettings => 'Settings';

  @override
  String pageHomeRecipeAuthor(String name) {
    return 'by $name';
  }

  @override
  String pageHomeRecipeCreated(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMd(localeName);
    final String dateString = dateDateFormat.format(date);

    return 'created $dateString';
  }

  @override
  String pageHomeRecipeVotes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count votes',
      one: '$count vote',
    );
    return '$_temp0';
  }

  @override
  String get pageHomeRecipeSaladName => 'Salad';

  @override
  String get pageHomeRecipeSaladDescription => 'Fresh vegetable salad full of vitamins, fiber and minerals.';

  @override
  String get pageHomeRecipeRiceName => 'Rice';

  @override
  String get pageHomeRecipeRiceDescription => 'Rice with vegetables and beans. A nutritious meal high in fiber.';

  @override
  String get pageHomeRecipeFriedEggsName => 'Fried eggs';

  @override
  String get pageHomeRecipeFriedEggsDescription => 'A meal full of protein and minerals.';

  @override
  String get pageSettingsTitle => 'Settings';

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
