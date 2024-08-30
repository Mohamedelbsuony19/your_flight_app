part of 'app_language_bloc.dart';

sealed class AppLanguageEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

final class AppLanguageChangeLocale extends AppLanguageEvent {
  final Locale locale;

  AppLanguageChangeLocale({required this.locale});

  @override
  List<Object?> get props => [locale];
}

final class AppLanguageGetSavedLocale extends AppLanguageEvent {
  @override
  List<Object?> get props => [];
}
