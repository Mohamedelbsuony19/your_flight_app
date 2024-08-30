part of 'app_language_bloc.dart';

final class AppLanguageState extends Equatable {
  @override
  List<Object?> get props => [];
}

final class AppLanguageInitial extends AppLanguageState {}

final class AppLanguageLoading extends AppLanguageState {}

final class AppLanguageSuccess extends AppLanguageState {
  final Locale locale;

  AppLanguageSuccess({required this.locale});

  @override
  List<Object?> get props => [locale];
}

final class AppLanguageFailure extends AppLanguageState {
  @override
  List<Object?> get props => [];
}
