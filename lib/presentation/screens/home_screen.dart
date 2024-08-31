import 'package:flutter/material.dart';
import 'package:samh_task_app/core/extensions/translation.dart';

import '../sections/head_view_widget.dart';
import '../sections/home_body.dart';

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
              title: context.translate.bookYourFlight,
              getDirectionalLeft: getDirectionalLeft(
                      MediaQuery.of(context).size.width * 0.38, 0.0) ??
                  0.0,
              getDirectionalRight: getDirectionalRight(
                      0.0, MediaQuery.of(context).size.width * 0.38) ??
                  0.0,
            ),
            const HomeBody(),
          ],
        ),
      ),
    );
  }
}
