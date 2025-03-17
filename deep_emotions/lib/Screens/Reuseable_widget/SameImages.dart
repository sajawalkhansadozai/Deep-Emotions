import 'package:flutter/material.dart';

class SameImage extends StatelessWidget {
  final String imagePath; // Parameter for the image path

  const SameImage({
    super.key,
    this.imagePath = 'assets/videoImage.jpg', // Default image path
  });

  @override
  Widget build(BuildContext context) {
    // Get screen width and height for responsive calculations
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Stack(
        children: [
          // Use the method to create the first container with the provided image
          _buildImageContainer(
            imagePath: imagePath,
            height: screenHeight * 0.23, // 25% of screen height
            width: screenWidth * 0.9, // 90% of screen width
            borderRadius: screenWidth * 0.025, // 2.5% of screen width
            padding: EdgeInsets.only(
              top: screenHeight * 0.03, // 3% of screen height
              left: screenWidth * 0.02, // 2% of screen width
            ),
          ),

          // Second container with star image
          Positioned(
            left: screenWidth * 0.8, // 80% of screen width
            top: screenHeight * 0.03, // 3% of screen height
            child: Container(
              height: screenHeight * 0.03, // 3% of screen height
              width: screenWidth * 0.05, // 5% of screen width
              child: Image.asset(
                'assets/starImage.jpg',
                fit: BoxFit.cover, // Ensures the image covers the container
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Method to create the container with optional parameters
Widget _buildImageContainer({
  required String imagePath, // Image path
  required double height, // Container height
  required double width, // Container width
  required double borderRadius, // Border radius
  required EdgeInsets padding, // Padding
}) {
  return Padding(
    padding: padding,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius), // Apply border radius
      child: Container(
        height: height,
        width: width,
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover, // Ensures the image covers the container
          alignment: Alignment.center, // Centers the image
        ),
      ),
    ),
  );
}
