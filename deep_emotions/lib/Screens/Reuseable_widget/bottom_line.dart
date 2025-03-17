import 'dart:math'; // For max() function

import 'package:flutter/material.dart';

Widget BottomLine(double screenWidth) {
  return Center(
    child: Container(
      width: screenWidth * 0.18,
      height: max(1, screenWidth * 0.01), // Avoid too small values
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/bottom_line.png"),
        ),
      ),
    ),
  );
}
