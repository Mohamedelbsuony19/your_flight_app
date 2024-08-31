import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:samh_task_app/core/extensions/translation.dart';
import 'package:samh_task_app/core/theme/text_style.dart';
import 'package:samh_task_app/presentation/blocs/travel_data/travel_data_bloc.dart';

import '../widgets/empty_widget.dart';
import 'home_screen.dart';

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
                  getDirectionalLeft: getDirectionalLeft(
                          MediaQuery.of(context).size.width * 0.38, 0.0) ??
                      0.0,
                  getDirectionalRight: getDirectionalRight(
                          0.0, MediaQuery.of(context).size.width * 0.38) ??
                      0.0,
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.3,
                  left: MediaQuery.of(context).size.width * 0.05,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.7,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: state.maybeMap(
                        orElse: () =>
                            const Center(child: CircularProgressIndicator()),
                        loadSuccess: (value) {
                          if (value.trips == null) {
                            return Center(
                                child: Text(
                              context.translate.startSearch,
                              style: context.titleLarge
                                  .copyWith(color: Colors.red),
                            ));
                          } else if (value.trips!.isEmpty) {
                            return const Center(child: EmptyWidget());
                          }
                          return ListView.builder(
                            itemCount: value.trips!.length,
                            itemBuilder: (context, index) {
                              return Text(
                                value.trips![index].from,
                                style: context.titleLarge.copyWith(
                                  color: Colors.red,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),

      // state.maybeMap(
      //   orElse: () => const Center(child: CircularProgressIndicator()),
      //   loadSuccess: (value) {
      //     if (value.trips == null) {
      //       return const Center(child: Text('No Data Found'));
      //     }
      //     return HeadViewWidget(
      //       getDirectionalLeft: getDirectionalLeft(
      //               MediaQuery.of(context).size.width * 0.38, 0.0) ??
      //           0.0,
      //       getDirectionalRight: getDirectionalRight(
      //               0.0, MediaQuery.of(context).size.width * 0.38) ??
      //           0.0,
      //     );
      //   },
      // );
    );
  }
}
