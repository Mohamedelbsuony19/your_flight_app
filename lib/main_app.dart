import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:samh_task_app/app/app.dart';
import 'package:samh_task_app/core/languages/src/app_localizations.dart';
import 'package:samh_task_app/presentation/blocs/app_language/app_language_bloc.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppLanguageBloc, AppLanguageState>(
      builder: (context, state) {
        return MaterialApp.router(
          routerConfig: appRouter,
          debugShowCheckedModeBanner: false,
          locale: state.maybeMap(
            success: (value) => value.locale,
            orElse: () => const Locale('ar'),
          ),
          // locale: const Locale('en'),
          localizationsDelegates: AppLang.localizationsDelegates,
          supportedLocales: AppLang.supportedLocales,
          title: 'AlKhbaz',
        );
      },
    );
  }
}
