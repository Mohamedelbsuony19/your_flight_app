import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLangEn extends AppLang {
  AppLangEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Travel Booking';

  @override
  String get from => 'From';

  @override
  String get to => 'To';

  @override
  String get departureDate => 'Departure Date';

  @override
  String get ticketClass => 'Ticket Class';

  @override
  String get tripType => 'Trip Type';

  @override
  String get passengers => 'Passengers';

  @override
  String get adults => 'Adults';

  @override
  String get children => 'Children';

  @override
  String get economy => 'Economy';

  @override
  String get business => 'Business';

  @override
  String get first => 'First';

  @override
  String get oneWay => 'One-way';

  @override
  String get roundTrip => 'Round-trip';

  @override
  String get search => 'Search';

  @override
  String get results => 'Search Results';

  @override
  String get price => 'Price';

  @override
  String get promoCode => 'Promo Code';

  @override
  String get apply => 'Apply';

  @override
  String get noResults => 'No matching trips found';

  @override
  String get home => 'Home';
}
