import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:deep_emotions/Screens/colors_and_other_constants/colors.dart';
import 'package:go_router/go_router.dart';

class IconRow extends StatelessWidget {
  const IconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(color: AppColors.CreamBlack),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // First icon with text
          GestureDetector(
            onTap: () {
              GoRouter.of(context).go('/home');
            },
            child: Row(
              children: [
                Icon(CupertinoIcons.home, color: AppColors.GoldCream),
                SizedBox(width: 5),
                Text(
                  'Home',
                  style: TextStyle(color: AppColors.GoldCream, fontSize: 12),
                ),
              ],
            ),
          ),

          // Second icon with text
          GestureDetector(
            onTap: () {
              GoRouter.of(context).go('/comment');
            },
            child: Row(
              children: [
                Icon(Icons.notifications, color: Colors.white),
                SizedBox(width: 5),
                Text(
                  'Notice',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),

          // Third icon with text
          GestureDetector(
            onTap: () {
              GoRouter.of(context).go('/videoPlayer');
            },
            child: Row(
              children: [
                Icon(CupertinoIcons.person, color: Colors.white),
                SizedBox(width: 5),
                Text(
                  'Mine',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
