import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../core/constants/colors.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 16),
      child: BottomNavigationBar(
        unselectedItemColor: AppColors.mainBlue.withOpacity(0.5),
        selectedItemColor: AppColors.mainBlue,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Ionicons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Ionicons.grid), label: ''),
          BottomNavigationBarItem(icon: Icon(Ionicons.heart), label: ''),
          BottomNavigationBarItem(icon: Icon(Ionicons.person), label: ''),
        ],
      ),
    );
  }
}
