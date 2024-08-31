import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:samh_task_app/core/extensions/translation.dart';
import 'package:samh_task_app/core/theme/app_colors.dart';
import 'package:samh_task_app/core/theme/text_style.dart';
import 'package:samh_task_app/presentation/blocs/app_language/app_language_bloc.dart';

class ChooseLanguageScreen extends StatefulWidget {
  const ChooseLanguageScreen({super.key});

  @override
  State<ChooseLanguageScreen> createState() => _ChooseLanguageScreenState();
}

class _ChooseLanguageScreenState extends State<ChooseLanguageScreen> {
  List<Map<String, dynamic>> languages = [
    {
      "id": "ar",
      "title": "العربية",
      "isSelected": true,
    },
    {
      "id": "en",
      "title": "English",
      "isSelected": false,
    }
  ];
  String selectedLocaleCode = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        // image: DecorationImage(
        //   image: AssetImage(Assets.background),
        //   fit: BoxFit.cover,
        // ),
      ),
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackground,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: Column(
            children: [
              // AppLogoWidget(
              //   width: 100.w,
              //   height: 100.h,
              // ),
              // Gap(25.h),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  context.translate.first,
                  style: context.titleMedium.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              BlocBuilder<AppLanguageBloc, AppLanguageState>(
                builder: (context, state) {
                  return ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 16);
                    },
                    shrinkWrap: true,
                    itemCount: languages.length,
                    itemBuilder: (context, index) {
                      String title = languages[index]['title'];
                      bool isSelected = state.maybeMap(
                        orElse: () {
                          return languages[index]['isSelected'];
                        },
                        success: (value) =>
                            value.locale.languageCode == languages[index]['id'],
                      );
                      return Center(
                        child: SizedBox(
                          width: 328,
                          child: CheckboxMenuButton(
                            value: isSelected,
                            onChanged: (val) {
                              if (val != null) {
                                setState(() {
                                  for (var language in languages) {
                                    language['isSelected'] = false;
                                  }
                                  languages[index]['isSelected'] = true;
                                  selectedLocaleCode = languages[index]['id'];
                                  context.read<AppLanguageBloc>().add(
                                        AppLanguageChangeLocale(
                                          locale: Locale(selectedLocaleCode),
                                        ),
                                      );
                                });
                              }
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(AppColors.white),
                              foregroundColor:
                                  WidgetStateProperty.all(AppColors.primary),
                              elevation: WidgetStateProperty.all(0),
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: const BorderSide(
                                    color: AppColors.primary,
                                    width: 0.5,
                                  ),
                                ),
                              ),
                            ),
                            child: Text(
                              title,
                              style: context.bodyMedium.copyWith(
                                color: AppColors.primary,
                                fontWeight: FontWeight.w200,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),

              const Spacer(),

              /// Next Button
            ],
          ),
        ),
      ),
    );
  }
}
