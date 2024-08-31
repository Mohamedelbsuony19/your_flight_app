import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:samh_task_app/core/constants/assets.dart';
import 'package:samh_task_app/core/extensions/translation.dart';
import 'package:samh_task_app/core/theme/text_style.dart';
import 'package:samh_task_app/presentation/blocs/travel_data/travel_data_bloc.dart';
import 'package:samh_task_app/presentation/widgets/date_time_picker_field.dart';

import '../../core/theme/app_colors.dart';
import '../blocs/app/bottom_nav_bar_bloc.dart';
import 'button_widget.dart';

class FormBody extends StatefulWidget {
  const FormBody({super.key});

  @override
  _FormBodyState createState() => _FormBodyState();
}

class _FormBodyState extends State<FormBody> {
  final _formKey = GlobalKey<FormState>(); // Global key for the form
  late final TextEditingController fromCityController;
  late final TextEditingController toCityController;
  late final TextEditingController dateController;
  String? _selectedClass;
  String? _selectedTravel;
  bool _isRtl = false;

  @override
  void initState() {
    fromCityController = TextEditingController();
    toCityController = TextEditingController();
    dateController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    fromCityController.dispose();
    toCityController.dispose();
    dateController.dispose();
    super.dispose();
  }

  void _swapContent() {
    setState(() {
      final tempText = fromCityController.text;
      fromCityController.text = toCityController.text;
      toCityController.text = tempText;
    });
  }

  @override
  Widget build(BuildContext context) {
    _isRtl = Directionality.of(context) == TextDirection.rtl;

    return BlocBuilder<TravelDataBloc, TravelDataState>(
      builder: (context, state) {
        return state.maybeMap(orElse: () {
          return Container();
        }, loadSuccess: (va) {
          return Form(
            key: _formKey,
            child: Column(
              children: [
                Directionality(
                  textDirection: _isRtl ? TextDirection.rtl : TextDirection.ltr,
                  child: Autocomplete<String>(
                    optionsBuilder: (TextEditingValue textEditingValue) {
                      final input = textEditingValue.text.toLowerCase();
                      return va.travelData!.cities.where((suggestion) {
                        return suggestion.toLowerCase().contains(input);
                      });
                    },
                    onSelected: (String selected) {
                      fromCityController.text = selected;
                    },
                    fieldViewBuilder: (BuildContext context,
                        TextEditingController fromController,
                        FocusNode focusNode,
                        VoidCallback onFieldSubmitted) {
                      fromController.text = fromCityController.text;
                      return TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        style: context.bodyLarge.copyWith(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold),
                        controller: fromController,
                        focusNode: focusNode,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(
                                color: AppColors.borderColor,
                                width: 1.0,
                              ),
                            ),
                            prefixIcon: const Icon(Icons.search),
                            hintText: context.translate.enterFirstCity,
                            labelText: context.translate.from),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return context.translate.enterFirstCity;
                          }
                          return null;
                        },
                      );
                    },
                  ),
                ),
                GestureDetector(
                    onTap: _swapContent, child: Image.asset(Assets.swapHoriz)),
                Directionality(
                  textDirection: _isRtl ? TextDirection.rtl : TextDirection.ltr,
                  child: Autocomplete<String>(
                    optionsBuilder: (TextEditingValue textEditingValue) {
                      final input = textEditingValue.text.toLowerCase();
                      if (va.travelData?.cities == null) return [];
                      return va.travelData!.cities.where((suggestion) {
                        return suggestion.toLowerCase().contains(input);
                      });
                    },
                    onSelected: (String selected) {
                      toCityController.text = selected;
                    },
                    fieldViewBuilder: (BuildContext context,
                        TextEditingController toController,
                        FocusNode focusNode,
                        VoidCallback onFieldSubmitted) {
                      toController.text = toCityController.text;
                      return TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: toController,
                        focusNode: focusNode,
                        style: context.bodyLarge.copyWith(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(
                                color: AppColors.borderColor,
                                width: 1.0,
                              ),
                            ),
                            prefixIcon: const Icon(Icons.search),
                            hintText: context.translate.enterFirstCity,
                            labelText: context.translate.to),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return context.translate.enterFirstCity;
                          }
                          return null;
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                DateTimePickerField(
                  controller: dateController,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return context.translate.selectDateAndTime;
                    }
                    return null;
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                BlocBuilder<TravelDataBloc, TravelDataState>(
                  builder: (context, state) {
                    return state.maybeMap(
                      orElse: () => Container(),
                      loadSuccess: (value) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child: DropdownButtonFormField<String>(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                style: context.bodyLarge.copyWith(
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.bold),
                                value: _selectedClass,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 1.0,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(
                                        color: AppColors.borderColor,
                                        width: 1.0,
                                      ),
                                    ),
                                    hintText: context.translate.yourClass,
                                    labelText: context.translate.yourClass),
                                items: value.travelData?.ticketClasses
                                    .map((String city) {
                                  return DropdownMenuItem<String>(
                                    value: city,
                                    child: Text(city),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _selectedClass = newValue;
                                  });
                                },
                                validator: (value) {
                                  if (value == null) {
                                    return context.translate.selectClass;
                                  }
                                  return null;
                                },
                              ),
                            ),
                            const SizedBox(
                                width: 5.0), // Spacing between fields
                            Expanded(
                              child: DropdownButtonFormField<String>(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                style: context.bodyLarge.copyWith(
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.bold),
                                value: _selectedTravel,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 1.0,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(
                                        color: AppColors.borderColor,
                                        width: 1.0,
                                      ),
                                    ),
                                    hintText: context.translate.tripType,
                                    labelText: context.translate.tripType),
                                items: value.travelData?.tripType
                                    .map((String city) {
                                  return DropdownMenuItem<String>(
                                    value: city,
                                    child: Text(city),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _selectedTravel = newValue;
                                  });
                                },
                                validator: (value) {
                                  if (value == null) {
                                    return context.translate.selectTripType;
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                FullWidthButton(
                  buttonText: context.translate.searchFlights,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.read<TravelDataBloc>().add(
                            TravelDataEvent.search(
                              fromCity: fromCityController.text,
                              toCity: toCityController.text,
                              date: dateController.text,
                              tripType: _selectedTravel!,
                              travelClass: _selectedClass!,
                            ),
                          );
                      context.read<BottomNavBarBloc>().add(
                            const ChangeIndexEvent(0),
                          );
                    }
                  },
                )
              ],
            ),
          );
        });
      },
    );
  }
}
