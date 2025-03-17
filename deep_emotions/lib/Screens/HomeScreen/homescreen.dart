import 'package:deep_emotions/Screens/Reuseable_widget/CamiioRow.dart';
import 'package:deep_emotions/Screens/Reuseable_widget/DeepEmotionsRow.dart';
import 'package:deep_emotions/Screens/Reuseable_widget/IconRow.dart';
import 'package:deep_emotions/Screens/Reuseable_widget/SameImages.dart';
import 'package:deep_emotions/Screens/Reuseable_widget/heartRow.dart';
import 'package:deep_emotions/Screens/colors_and_other_constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.CharcoalBlack,
        body: Column(
          children: [
            Deepemotionsrow(),
            const SizedBox(height: 15), // Add spacing
            HomeFirstLine(
              containerColor: AppColors.GoldCream, // Pass custom color
              text: 'Hot', // Pass custom text
              textColor: Colors.black, // Pass custom text color
            ),
            Camiiorow(),
            SameImage(),
            HeartLine(),
            Camiiorow(),
            SameImage(imagePath: 'assets/videoImage2.jpg'),
            HeartLine(),
            IconRow(),
          ],
        ),
      ),
    );
  }
}

class HomeFirstLine extends StatelessWidget {
  final Color containerColor; // Optional parameter for container color
  final String text; // Optional parameter for text
  final Color textColor; // Optional parameter for text color
  final double containerHeight; // Optional parameter for container height
  final double containerWidth; // Optional parameter for container width
  final double borderRadius; // Optional parameter for border radius

  const HomeFirstLine({
    super.key,
    this.containerColor = AppColors.GoldCream, // Default color
    this.text = 'Hot', // Default text
    this.textColor = Colors.black, // Default text color
    this.containerHeight = 30, // Default height
    this.containerWidth = 70, // Default width
    this.borderRadius = 20, // Default border radius
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align children to the start
          children: [
            _buildCustomContainer(
              containerColor: containerColor,
              text: text,
              textColor: textColor,
              containerHeight: containerHeight,
              containerWidth: containerWidth,
              borderRadius: borderRadius,
            ),
            SizedBox(width: 30),
            _buildCustomContainer(
              containerColor:
                  AppColors.CharcoalBlack, // Example of another container
              text: 'Funny',
              textColor: Colors.white, // Example of another text color
              containerHeight: 30, // Example of another height
              containerWidth: 70, // Example of another width
            ),
            SizedBox(width: 30),
            _buildCustomContainer(
              containerColor:
                  AppColors.CharcoalBlack, // Example of another container
              text: 'Scenery',
              textColor: Colors.white, // Example of another text color
              containerHeight: 30, // Example of another height
              containerWidth: 70, // Example of another width
            ),
            SizedBox(width: 40),
            Icon(Icons.menu_sharp, color: Colors.white),
          ],
        ),
      ),
    );
  }

  // Method to create a customizable container
  Widget _buildCustomContainer({
    Color containerColor = AppColors.GoldCream, // Default color
    String text = 'Hot', // Default text
    Color textColor = Colors.black, // Default text color
    double containerHeight = 30, // Default height
    double containerWidth = 70, // Default width
    double borderRadius = 20, // Default border radius
  }) {
    return Container(
      height: containerHeight,
      width: containerWidth,
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: textColor), // Apply text color
        ),
      ),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
    );
  }
}
