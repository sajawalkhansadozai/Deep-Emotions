import 'package:deep_emotions/Screens/Reuseable_widget/DeepEmotionsRow.dart';
import 'package:deep_emotions/Screens/colors_and_other_constants/colors.dart';
import 'package:flutter/material.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.CharcoalBlack,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.04, // 4% of screen height
              left: screenWidth * 0.03, // 3% of screen width
            ),
            child: Deepemotionsrow(),
          ),
          SizedBox(height: screenHeight * 0.04), // 4% of screen height
          Stack(
            children: [
              SizedBox(
                height: screenHeight * 0.85, // 80% of screen height
                width: screenWidth, // Full screen width
                child: Image.asset(
                  'assets/babyimage.jpg',
                  fit: BoxFit.cover, // Ensure the image covers the container
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
