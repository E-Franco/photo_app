// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomeImageComponent extends StatelessWidget {
  final String asset;
  final bool isLiked;

  const HomeImageComponent({Key? key, required this.asset, this.isLiked = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 15),
      width: 325,
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              asset,
              fit: BoxFit.cover,
              width: 325,
              height: 200,
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 3),
            child: Row(
              children: const [
                // if (isLiked) const Icon(Ionicons.heart, color: Colors.red) else
                Icon(Ionicons.heart_outline),
                SizedBox(width: 10),
                Icon(Ionicons.chatbox_outline),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
