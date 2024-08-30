import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:samh_task_app/core/constants/local_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';


part 'app_language_event.dart';
part 'app_language_state.dart';

class AppLanguageBloc extends Bloc<AppLanguageEvent, AppLanguageState> {
  AppLanguageBloc() : super(AppLanguageInitial()) {
    on<AppLanguageEvent>(_onEvent, transformer: sequential());
  }

  FutureOr<void> _onEvent(
    AppLanguageEvent event,
    Emitter<AppLanguageState> emit,
  ) {
    return switch (event) {
      final AppLanguageChangeLocale e => _changeLocaleHandler(e, emit),
      final AppLanguageGetSavedLocale e => _getSavedLocaleHandler(e, emit),
    };
  }

  FutureOr<void> _changeLocaleHandler(
    AppLanguageChangeLocale event,
    Emitter<AppLanguageState> emit,
  ) async {
    final preferences = GetIt.I<SharedPreferences>();
    await preferences.setString(
      SharedKeys.selectedLocaleCode,
      event.locale.languageCode,
    );
    emit(AppLanguageSuccess(locale: event.locale));
  }

  FutureOr<void> _getSavedLocaleHandler(
    AppLanguageGetSavedLocale event,
    Emitter<AppLanguageState> emit,
  ) async {
    final preferences = GetIt.I<SharedPreferences>();
    final code = preferences.getString(SharedKeys.selectedLocaleCode);
    if (code != null) {
      emit(AppLanguageSuccess(locale: Locale(code)));
    } else {
      emit(AppLanguageSuccess(locale: const Locale('ar')));
    }
  }
}

extension OnMaybeMapAppLanguage on AppLanguageState {
  T maybeMap<T>({
    T Function(AppLanguageSuccess value)? success,
    T Function(AppLanguageFailure value)? failure,
    T Function(AppLanguageInitial value)? initial,
    T Function(AppLanguageLoading value)? loading,
    required T Function() orElse,
  }) {
    if (this is AppLanguageSuccess && success != null) {
      return success(this as AppLanguageSuccess);
    } else if (this is AppLanguageFailure && failure != null) {
      return failure(this as AppLanguageFailure);
    } else if (this is AppLanguageInitial && initial != null) {
      return initial(this as AppLanguageInitial);
    } else if (this is AppLanguageLoading && loading != null) {
      return loading(this as AppLanguageLoading);
    }

    return orElse();
  }
}
