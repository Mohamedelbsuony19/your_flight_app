import 'package:flutter/material.dart';

import '../languages/src/app_localizations.dart';
import '../languages/src/app_localizations_ar.dart';

extension Translation on BuildContext {
  AppLang get translate => AppLang.of(this) ?? AppLangAr();

  TextDirection get direction => WidgetsLocalizations.of(this).textDirection;
}