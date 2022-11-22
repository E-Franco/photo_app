// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ionicons/ionicons.dart';
import 'package:photo_app/core/constants/colors.dart';

class AvatarItem extends StatelessWidget {
  final String asset;
  final bool withAddButton;

  const AvatarItem({
    Key? key,
    required this.asset,
    this.withAddButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 55,
          height: 55,
          margin: const EdgeInsets.only(right: 15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(999),
            child: Image.asset(asset, fit: BoxFit.cover),
          ),
        ),
        if (withAddButton)
          Positioned(
            right: 10,
            bottom: 0,
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: AppColors.mainBlue,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white),
              ),
              child: const Center(
                child: Icon(
                  Ionicons.add,
                  color: Colors.white,
                  size: 13,
                ),
              ),
            ),
          )
      ],
    );
  }
}
