import 'package:flutter/material.dart';

class HeartLine extends StatelessWidget {
  const HeartLine({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width for responsive calculations
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Center the row
        children: [
          // Use responsive spacing
          SizedBox(width: screenWidth * 0.05), // 5% of screen width
          imagecontainer(imagePath: 'assets/image1.png'),
          SizedBox(width: screenWidth * 0.075), // 7.5% of screen width
          imagecontainer(imagePath: 'assets/image2.jpg'),
          SizedBox(width: screenWidth * 0.25), // 25% of screen width
          Padding(
            padding: EdgeInsets.only(
              top: screenWidth * 0.0125,
            ), // 1.25% of screen width
            child: imagecontainer(imagePath: 'assets/image3.png'),
          ),
          SizedBox(width: screenWidth * 0.025), // 2.5% of screen width
          imagecontainer(imagePath: 'assets/image4.png'),
        ],
      ),
    );
  }

  // Define the method with a required named parameter
  Widget imagecontainer({required String imagePath}) {
    return ClipOval(
      child: SizedBox(
        height: 50, // Fixed height (can be made responsive if needed)
        width: 50, // Fixed width (can be made responsive if needed)
        child: Image.asset(imagePath), // Use the passed image path
      ),
    );
  }
}
