import 'package:flutter/material.dart';

class GreyDotComponent extends StatelessWidget {
  const GreyDotComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
              );
  }
}