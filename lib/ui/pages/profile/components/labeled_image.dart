// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LabeledImage extends StatelessWidget {
  const LabeledImage({
    Key? key,
    required this.label,
    required this.asset,
    this.margin,
  }) : super(key: key);

  final String label;
  final String asset;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: margin,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(asset, fit: BoxFit.cover),
          ),
          Positioned(
            bottom: 15,
            left: 15,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                letterSpacing: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
