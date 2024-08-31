import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLangAr extends AppLang {
  AppLangAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'حجز السفر';

  @override
  String get from => 'من';

  @override
  String get to => 'إلى';

  @override
  String get departureDate => 'تاريخ المغادرة';

  @override
  String get ticketClass => 'فئة التذكرة';

  @override
  String get tripType => 'نوع الرحلة';

  @override
  String get passengers => 'الركاب';

  @override
  String get adults => 'البالغين';

  @override
  String get children => 'الأطفال';

  @override
  String get economy => 'اقتصادي';

  @override
  String get business => 'رجال الأعمال';

  @override
  String get first => 'أولى';

  @override
  String get oneWay => 'ذهاب فقط';

  @override
  String get roundTrip => 'ذهاب وعودة';

  @override
  String get search => 'بحث';

  @override
  String get results => 'نتائج البحث';

  @override
  String get price => 'السعر';

  @override
  String get promoCode => 'رمز ترويجي';

  @override
  String get apply => 'تطبيق';

  @override
  String get noResults => 'لا توجد رحلات مطابقة';

  @override
  String get home => 'الرئيسية';

  @override
  String get bookYourFlight => 'احجز رحلتك';

  @override
  String get enterFirstCity => 'اكتب المدينة';

  @override
  String get selectDateAndTime => 'اختر التاريخ ';

  @override
  String get travelers => 'الركاب';

  @override
  String get yourClass => 'الفئة';

  @override
  String get searchFlights => 'بحث عن رحلات';

  @override
  String get departe => 'قيام';

  @override
  String get arrive => 'الوصول';

  @override
  String get viewMore => ' مشاهدة المزيد';

  @override
  String get flightsAvailable => 'الرحلات المتاحة';

  @override
  String get selectClass => 'اختر الفئة';

  @override
  String get selectTripType => 'اختر نوع الرحلة';

  @override
  String get startSearch => 'ابحث اولا لترى النتائج !';
}
