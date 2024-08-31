import 'package:flutter/material.dart';
import 'package:samh_task_app/core/constants/assets.dart';
import 'package:samh_task_app/core/theme/app_colors.dart';
import 'package:samh_task_app/core/theme/text_style.dart';

class HeadViewWidget extends StatelessWidget {
  final double getDirectionalLeft;
  final double getDirectionalRight;

  final String title;
  const HeadViewWidget({
    super.key,
    required this.getDirectionalLeft,
    required this.getDirectionalRight,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.rectangle,
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width,
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.02,
          left: MediaQuery.of(context).size.width * 0.2,
          child: Image.asset(
            Assets.vector,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.039,
          left: MediaQuery.of(context).size.width * 0.3,
          child: Image.asset(
            Assets.frame,
            width: MediaQuery.of(context).size.width * 0.5,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.067,
          left: MediaQuery.of(context).size.width * 0.38,
          child: Image.asset(Assets.track),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.2,
          left: getDirectionalLeft,
          right: getDirectionalRight,
          child: Text(
            title,
            style: context.displayMedium
                .copyWith(color: AppColors.white, fontSize: 40),
          ),
        )
      ],
    );
  }
}
