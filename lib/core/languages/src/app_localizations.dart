import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLang
/// returned by `AppLang.of(context)`.
///
/// Applications need to include `AppLang.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'src/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLang.localizationsDelegates,
///   supportedLocales: AppLang.supportedLocales,
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
/// be consistent with the languages listed in the AppLang.supportedLocales
/// property.
abstract class AppLang {
  AppLang(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLang? of(BuildContext context) {
    return Localizations.of<AppLang>(context, AppLang);
  }

  static const LocalizationsDelegate<AppLang> delegate = _AppLangDelegate();

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
    Locale('en')
  ];

  /// No description provided for @appName.
  ///
  /// In ar, this message translates to:
  /// **'حجز السفر'**
  String get appName;

  /// No description provided for @from.
  ///
  /// In ar, this message translates to:
  /// **'من'**
  String get from;

  /// No description provided for @to.
  ///
  /// In ar, this message translates to:
  /// **'إلى'**
  String get to;

  /// No description provided for @departureDate.
  ///
  /// In ar, this message translates to:
  /// **'تاريخ المغادرة'**
  String get departureDate;

  /// No description provided for @ticketClass.
  ///
  /// In ar, this message translates to:
  /// **'فئة التذكرة'**
  String get ticketClass;

  /// No description provided for @tripType.
  ///
  /// In ar, this message translates to:
  /// **'نوع الرحلة'**
  String get tripType;

  /// No description provided for @passengers.
  ///
  /// In ar, this message translates to:
  /// **'الركاب'**
  String get passengers;

  /// No description provided for @adults.
  ///
  /// In ar, this message translates to:
  /// **'البالغين'**
  String get adults;

  /// No description provided for @children.
  ///
  /// In ar, this message translates to:
  /// **'الأطفال'**
  String get children;

  /// No description provided for @economy.
  ///
  /// In ar, this message translates to:
  /// **'اقتصادي'**
  String get economy;

  /// No description provided for @business.
  ///
  /// In ar, this message translates to:
  /// **'رجال الأعمال'**
  String get business;

  /// No description provided for @first.
  ///
  /// In ar, this message translates to:
  /// **'أولى'**
  String get first;

  /// No description provided for @oneWay.
  ///
  /// In ar, this message translates to:
  /// **'ذهاب فقط'**
  String get oneWay;

  /// No description provided for @roundTrip.
  ///
  /// In ar, this message translates to:
  /// **'ذهاب وعودة'**
  String get roundTrip;

  /// No description provided for @search.
  ///
  /// In ar, this message translates to:
  /// **'بحث'**
  String get search;

  /// No description provided for @results.
  ///
  /// In ar, this message translates to:
  /// **'نتائج البحث'**
  String get results;

  /// No description provided for @price.
  ///
  /// In ar, this message translates to:
  /// **'السعر'**
  String get price;

  /// No description provided for @promoCode.
  ///
  /// In ar, this message translates to:
  /// **'رمز ترويجي'**
  String get promoCode;

  /// No description provided for @apply.
  ///
  /// In ar, this message translates to:
  /// **'تطبيق'**
  String get apply;

  /// No description provided for @noResults.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد رحلات مطابقة'**
  String get noResults;

  /// No description provided for @home.
  ///
  /// In ar, this message translates to:
  /// **'الرئيسية'**
  String get home;

  /// No description provided for @bookYourFlight.
  ///
  /// In ar, this message translates to:
  /// **'احجز رحلتك'**
  String get bookYourFlight;

  /// No description provided for @enterFirstCity.
  ///
  /// In ar, this message translates to:
  /// **'اكتب المدينة'**
  String get enterFirstCity;

  /// No description provided for @selectDateAndTime.
  ///
  /// In ar, this message translates to:
  /// **'اختر التاريخ '**
  String get selectDateAndTime;

  /// No description provided for @travelers.
  ///
  /// In ar, this message translates to:
  /// **'الركاب'**
  String get travelers;

  /// No description provided for @yourClass.
  ///
  /// In ar, this message translates to:
  /// **'الفئة'**
  String get yourClass;

  /// No description provided for @searchFlights.
  ///
  /// In ar, this message translates to:
  /// **'بحث عن رحلات'**
  String get searchFlights;

  /// No description provided for @departe.
  ///
  /// In ar, this message translates to:
  /// **'قيام'**
  String get departe;

  /// No description provided for @arrive.
  ///
  /// In ar, this message translates to:
  /// **'الوصول'**
  String get arrive;

  /// No description provided for @viewMore.
  ///
  /// In ar, this message translates to:
  /// **' مشاهدة المزيد'**
  String get viewMore;

  /// No description provided for @flightsAvailable.
  ///
  /// In ar, this message translates to:
  /// **'الرحلات المتاحة'**
  String get flightsAvailable;

  /// No description provided for @selectClass.
  ///
  /// In ar, this message translates to:
  /// **'اختر الفئة'**
  String get selectClass;

  /// No description provided for @selectTripType.
  ///
  /// In ar, this message translates to:
  /// **'اختر نوع الرحلة'**
  String get selectTripType;

  /// No description provided for @startSearch.
  ///
  /// In ar, this message translates to:
  /// **'ابحث اولا لترى النتائج !'**
  String get startSearch;
}

class _AppLangDelegate extends LocalizationsDelegate<AppLang> {
  const _AppLangDelegate();

  @override
  Future<AppLang> load(Locale locale) {
    return SynchronousFuture<AppLang>(lookupAppLang(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLangDelegate old) => false;
}

AppLang lookupAppLang(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLangAr();
    case 'en': return AppLangEn();
  }

  throw FlutterError(
    'AppLang.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
