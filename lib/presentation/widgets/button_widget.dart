import 'package:flutter/material.dart';
import 'package:samh_task_app/core/theme/app_colors.dart';
import 'package:samh_task_app/core/theme/text_style.dart';

class FullWidthButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;

  const FullWidthButton({super.key, required this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttonColor,
        minimumSize: const Size.fromHeight(50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Text(
        buttonText,
        style: context.titleLarge.copyWith(color: AppColors.white),
      ),
    );
  }
}
