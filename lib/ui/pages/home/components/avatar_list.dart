import 'package:flutter/material.dart';
import '../../../../core/constants/assets.dart';
import 'avatar_item.dart';

class AvatarList extends StatelessWidget {
  const AvatarList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: const [
          AvatarItem(asset: AppImages.person1, withAddButton: true),
          AvatarItem(asset: AppImages.person2),
          AvatarItem(asset: AppImages.person3),
          AvatarItem(asset: AppImages.person4),
          AvatarItem(asset: AppImages.person5),
          AvatarItem(asset: AppImages.person6),
          AvatarItem(asset: AppImages.person7),
        ],
      ),
    );
  }
}
