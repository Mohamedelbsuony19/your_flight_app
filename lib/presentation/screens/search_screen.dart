import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:samh_task_app/core/extensions/translation.dart';
import 'package:samh_task_app/presentation/blocs/travel_data/travel_data_bloc.dart';

import '../sections/head_view_widget.dart';
import '../sections/search_body.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
      body: BlocBuilder<TravelDataBloc, TravelDataState>(
        builder: (context, state) {
          return SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                HeadViewWidget(
                  title: context.translate.searchResults,
                  getDirectionalLeft: getDirectionalLeft(
                          MediaQuery.of(context).size.width * 0.38, 0.0) ??
                      0.0,
                  getDirectionalRight: getDirectionalRight(
                          0.0, MediaQuery.of(context).size.width * 0.38) ??
                      0.0,
                ),
                SearchBody(
                  state: state,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
