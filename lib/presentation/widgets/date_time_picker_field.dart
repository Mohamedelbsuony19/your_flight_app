import 'package:flutter/material.dart';
import 'package:intl/intl.dart' hide TextDirection;
import 'package:samh_task_app/core/extensions/translation.dart';
import 'package:samh_task_app/core/theme/text_style.dart';

import '../../core/theme/app_colors.dart';

class DateTimePickerField extends StatefulWidget {
  final TextEditingController controller;
  final String? Function(String?)? validate;
  const DateTimePickerField(
      {super.key, required this.controller, this.validate});

  @override
  _DateTimePickerFieldState createState() => _DateTimePickerFieldState();
}

class _DateTimePickerFieldState extends State<DateTimePickerField> {
  // final TextEditingController _controller = TextEditingController();
  bool _isRtl = false;

  @override
  Widget build(BuildContext context) {
    _isRtl = Directionality.of(context) == TextDirection.rtl;

    return Directionality(
      textDirection: _isRtl ? TextDirection.rtl : TextDirection.ltr,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: widget.validate,
        controller: widget.controller,
        readOnly: true,
        style: context.bodyLarge
            .copyWith(color: AppColors.primary, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              color: AppColors.borderColor,
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
          prefixIcon: const Icon(Icons.date_range),
          hintText: context.translate.selectDateAndTime,
          labelText: context.translate.selectDateAndTime,
        ),
        onTap: () async {
          final now = DateTime.now();
          final tomorrow = now.add(const Duration(days: 1));

          // Show date picker
          DateTime? selectedDate = await showDatePicker(
            context: context,
            initialDate: tomorrow,
            firstDate: tomorrow,
            lastDate: DateTime(tomorrow.year + 1, 12, 31),
            locale: _isRtl ? const Locale('ar') : const Locale('en'),
          );

          if (selectedDate != null) {
            setState(() {
              final dateTime = DateTime(
                selectedDate.year,
                selectedDate.month,
                selectedDate.day,
              );
              widget.controller.text =
                  DateFormat('yyyy-MM-dd').format(dateTime);
            });
          }
        },
      ),
    );
  }
}
