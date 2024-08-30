import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:samh_task_app/core/extensions/translation.dart';
import 'package:samh_task_app/presentation/blocs/travel_data/travel_data_bloc.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TravelDataBloc, TravelDataState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => const Center(),
            loadSuccess: (value) => Center(
              child: Text(value.travelData.ticketClasses[0]),
            ),
          );
          return Center(
            child: Text(context.translate.appName),
          );
        },
      ),
    );
  }
}
