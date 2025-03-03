import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
    Locale('es')
  ];

  /// No description provided for @pageHomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Recipes'**
  String get pageHomeTitle;

  /// No description provided for @pageHomeDrawerHeader.
  ///
  /// In en, this message translates to:
  /// **'Recipes'**
  String get pageHomeDrawerHeader;

  /// No description provided for @pageHomeDrawerListTileSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get pageHomeDrawerListTileSettings;

  /// No description provided for @pageHomeRecipeAuthor.
  ///
  /// In en, this message translates to:
  /// **'by {name}'**
  String pageHomeRecipeAuthor(String name);

  /// No description provided for @pageHomeRecipeCreated.
  ///
  /// In en, this message translates to:
  /// **'created {date}'**
  String pageHomeRecipeCreated(DateTime date);

  /// The gen_l10n does not handle properly plural forms: zero, one, and two. Check the reported issue for more details: https://github.com/flutter/flutter/issues/84291
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1 {{count} vote} other {{count} votes}}'**
  String pageHomeRecipeVotes(int count);

  /// No description provided for @pageHomeRecipeSaladName.
  ///
  /// In en, this message translates to:
  /// **'Salad'**
  String get pageHomeRecipeSaladName;

  /// No description provided for @pageHomeRecipeSaladDescription.
  ///
  /// In en, this message translates to:
  /// **'Fresh vegetable salad full of vitamins, fiber and minerals.'**
  String get pageHomeRecipeSaladDescription;

  /// No description provided for @pageHomeRecipeRiceName.
  ///
  /// In en, this message translates to:
  /// **'Rice'**
  String get pageHomeRecipeRiceName;

  /// No description provided for @pageHomeRecipeRiceDescription.
  ///
  /// In en, this message translates to:
  /// **'Rice with vegetables and beans. A nutritious meal high in fiber.'**
  String get pageHomeRecipeRiceDescription;

  /// No description provided for @pageHomeRecipeFriedEggsName.
  ///
  /// In en, this message translates to:
  /// **'Fried eggs'**
  String get pageHomeRecipeFriedEggsName;

  /// No description provided for @pageHomeRecipeFriedEggsDescription.
  ///
  /// In en, this message translates to:
  /// **'A meal full of protein and minerals.'**
  String get pageHomeRecipeFriedEggsDescription;

  /// No description provided for @pageSettingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get pageSettingsTitle;

  /// No description provided for @pageSettingsInputLanguage.
  ///
  /// In en, this message translates to:
  /// **'{locale, select, ar {عربي} en {English} es {Español} other {-}}'**
  String pageSettingsInputLanguage(String locale);
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
