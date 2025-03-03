// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get pageHomeTitle => 'وصفات';

  @override
  String get pageHomeDrawerHeader => 'وصفات';

  @override
  String get pageHomeDrawerListTileSettings => 'إعدادات';

  @override
  String pageHomeRecipeAuthor(String name) {
    return 'بواسطة $name';
  }

  @override
  String pageHomeRecipeCreated(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMd(localeName);
    final String dateString = dateDateFormat.format(date);

    return 'خلقت $dateString';
  }

  @override
  String pageHomeRecipeVotes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'صوت $count',
      many: 'أصوات $count',
      few: 'أصوات $count',
      two: 'صوت $count',
      one: 'صوت $count',
      zero: 'لا يوجد تصويتات',
    );
    return '$_temp0';
  }

  @override
  String get pageHomeRecipeSaladName => 'سلطة';

  @override
  String get pageHomeRecipeSaladDescription => 'سلطة خضار طازجة مليئة بالفيتامينات والألياف والمعادن.';

  @override
  String get pageHomeRecipeRiceName => 'أرز';

  @override
  String get pageHomeRecipeRiceDescription => 'أرز بالخضار والفاصوليا. وجبة مغذية غنية بالألياف.';

  @override
  String get pageHomeRecipeFriedEggsName => 'البيض المقلي';

  @override
  String get pageHomeRecipeFriedEggsDescription => 'وجبة غنية بالبروتينات والمعادن.';

  @override
  String get pageSettingsTitle => 'إعدادات';

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
