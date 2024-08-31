import 'package:flutter/material.dart';
import 'package:samh_task_app/core/constants/assets.dart';
import 'package:samh_task_app/core/extensions/translation.dart';
import 'package:samh_task_app/core/theme/text_style.dart';
import 'package:samh_task_app/presentation/blocs/travel_data/travel_data_bloc.dart';
import 'package:samh_task_app/presentation/widgets/empty_widget.dart';
import 'package:samh_task_app/presentation/widgets/ticket_widget.dart';

class SearchBody extends StatelessWidget {
  final TravelDataState state;
  const SearchBody({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.3,
      left: MediaQuery.of(context).size.width * 0.05,
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.white,
          ),
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.9,
          child: state.maybeMap(
            orElse: () => const Center(child: CircularProgressIndicator()),
            loadSuccess: (value) {
              if (value.trips == null) {
                return Center(
                    child: Text(
                  context.translate.startSearch,
                  style: context.titleLarge.copyWith(color: Colors.red),
                ));
              } else if (value.trips!.isEmpty) {
                return const Center(child: EmptyWidget());
              }
              return ListView.builder(
                itemCount: value.trips!.length,
                itemBuilder: (context, index) {
                  return FlightTicketWidget(
                    airlineLogoPath: Assets.frame,
                    airlineName: value.trips![index].tripType,
                    toCity: value.trips![index].to,
                    fromCity: value.trips![index].from,
                    duration: value.trips![index].ticketClass,
                    price: value.trips![index].price.toDouble(),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
