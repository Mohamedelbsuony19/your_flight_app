import 'package:flutter/material.dart';
import 'package:samh_task_app/core/extensions/translation.dart';
import 'package:samh_task_app/core/theme/text_style.dart';

import '../../core/constants/assets.dart';
import '../../core/theme/app_colors.dart';
import '../widgets/form_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final isRtl = Directionality.of(context) == TextDirection.ltr;

    double? getDirectionalLeft(double left, double right) {
      return isRtl ? null : left;
    }

    double? getDirectionalRight(double left, double right) {
      return isRtl ? right : null;
    }

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            HeadViewWidget(
              getDirectionalLeft: getDirectionalLeft(
              MediaQuery.of(context).size.width * 0.38, 0.0)??0.0,
              getDirectionalRight:getDirectionalRight(
              0.0, MediaQuery.of(context).size.width * 0.38)??0.0,
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.3,
              left: MediaQuery.of(context).size.width * 0.05,
              child: Center(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const FormBody(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeadViewWidget extends StatelessWidget {
  final double getDirectionalLeft;
  final double getDirectionalRight;
  const HeadViewWidget({
    super.key, required this.getDirectionalLeft, required this.getDirectionalRight,
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
            context.translate.bookYourFlight,
            style: context.displayLarge.copyWith(
              color: AppColors.white,
            ),
          ),
        )
      ],
    );
  }
}
