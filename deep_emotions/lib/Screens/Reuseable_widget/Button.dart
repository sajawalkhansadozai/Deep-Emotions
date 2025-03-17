import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:deep_emotions/Screens/colors_and_other_constants/colors.dart';

class ReusableButton extends StatelessWidget {
  final String buttonText;
  final String route;
  final double screenWidth;
  final double screenHeight;

  const ReusableButton({
    super.key,
    required this.buttonText,
    required this.route,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: screenWidth * 0.8, // 85% of screen width
        height: screenHeight * 0.07, // 7% of screen height
        child: ElevatedButton(
          onPressed: () {
            GoRouter.of(context).go(route);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.GoldCream,
            foregroundColor: AppColors.CharcoalBlack,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                screenWidth * 0.03,
              ), // 3% of screen width
            ),
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: screenWidth * 0.045, // 4.5% of screen width
            ),
          ),
        ),
      ),
    );
  }
}
