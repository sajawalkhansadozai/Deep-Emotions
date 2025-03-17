import 'package:flutter/material.dart';

class Camiiorow extends StatelessWidget {
  const Camiiorow({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width and height for responsive calculations
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      child: Padding(
        padding: EdgeInsets.only(
          top: screenHeight * 0.02, // 4% of screen height
          left: screenWidth * 0.07, // 7% of screen width
        ),
        child: Row(
          children: [
            // Circular image container
            ClipOval(
              child: SizedBox(
                height: screenHeight * 0.03, // 3% of screen height
                width: screenWidth * 0.06, // 6% of screen width
                child: Image.asset(
                  'assets/carmiio.png',
                  fit:
                      BoxFit
                          .cover, // Ensures the image covers the circular area
                ),
              ),
            ),

            // Spacing between image and text
            SizedBox(
              height: screenHeight * 0.01, // 1% of screen height
              width: screenWidth * 0.02, // 2% of screen width
            ),

            // Text column
            Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align text to the start
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Camelio\n', // First line of text
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.03, // 3% of screen width
                          fontWeight: FontWeight.bold, // Make this part bold
                        ),
                      ),
                      TextSpan(
                        text: 'Summer deser', // Second line of text
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.025, // 2.5% of screen width
                          fontWeight:
                              FontWeight.normal, // Make this part normal
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Spacer to push the icon to the end
            Spacer(),

            // More options icon
            Icon(
              Icons.more_vert,
              color: Colors.white,
              size: screenWidth * 0.06, // 6% of screen width
            ),
          ],
        ),
      ),
    );
  }
}
