import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../core/constants/constants.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            Labels.homeTitle,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Icon(
            Ionicons.camera,
            color: AppColors.mainBlue,
            size: 30,
          ),
        ],
      ),
    );
  }
}
