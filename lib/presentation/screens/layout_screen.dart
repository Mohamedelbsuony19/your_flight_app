import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:samh_task_app/core/theme/app_colors.dart';
import 'package:samh_task_app/presentation/screens/choose_language_screen.dart';
import 'package:samh_task_app/presentation/screens/home_screen.dart';
import 'package:samh_task_app/presentation/screens/search_screen.dart';

import '../blocs/app/bottom_nav_bar_bloc.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavBarBloc(),
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.scaffoldBackground,
        bottomNavigationBar: BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
          builder: (context, state) {
            final selectedIndex = (state as BottomNavBarSuccess).selectedIndex;
            return CurvedNavigationBar(
              index: selectedIndex,
              backgroundColor: Colors.transparent,
              color: AppColors.primary,
              items: const [
                ImageIcon(
                  color: AppColors.white,
                  AssetImage('assets/icons/search-normal.png'),
                ),
                ImageIcon(
                  color: AppColors.white,
                  AssetImage('assets/icons/Vector.png'),
                ),
                ImageIcon(
                  color: AppColors.white,
                  AssetImage('assets/icons/home.png'),
                ),
              ],
              onTap: (index) {
                context.read<BottomNavBarBloc>().add(ChangeIndexEvent(index));
              },
            );
          },
        ),
        body: BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
          builder: (context, state) {
            final selectedIndex = (state as BottomNavBarSuccess).selectedIndex;
            return IndexedStack(
              index: selectedIndex,
              children: const [
                SearchScreen(),
                HomeScreen(),
                ChooseLanguageScreen(), // Update this as needed
              ],
            );
          },
        ),
      ),
    );
  }
}
