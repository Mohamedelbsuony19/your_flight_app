import 'package:flutter/material.dart';
import 'package:samh_task_app/core/extensions/translation.dart';
import 'package:samh_task_app/core/theme/app_colors.dart';
import 'package:samh_task_app/core/theme/text_style.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Text(
              context.translate.noResults,
              textAlign: TextAlign.center,
              style: context.titleLarge.copyWith(
                color: AppColors.error,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
