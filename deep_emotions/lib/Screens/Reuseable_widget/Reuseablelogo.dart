import 'package:flutter/material.dart';

class Reuseablelogo extends StatelessWidget {
  const Reuseablelogo({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Calculate logo size and spacing based on screen size
    final logoSize = screenWidth * 0.1; // 10% of screen width
    final spacing = screenWidth * 0.1; // 5% of screen width

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Imagecontainer('assets/Google.png', logoSize),
          SizedBox(width: spacing),
          Imagecontainer('assets/Facebook.png', logoSize),
          SizedBox(width: spacing),
          Imagecontainer('assets/Apple.png', logoSize),
        ],
      ),
    );
  }

  Container Imagecontainer(String imageOfLogo, double size) {
    return Container(
      height: size,
      width: size,
      child: Image.asset(
        imageOfLogo,
        fit: BoxFit.contain, // Ensure the image fits within the container
      ),
    );
  }
}
