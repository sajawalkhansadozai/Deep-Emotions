import 'package:deep_emotions/Screens/Reuseable_widget/Button.dart';
import 'package:deep_emotions/Screens/Reuseable_widget/Reuseablelogo.dart';
import 'package:deep_emotions/Screens/Reuseable_widget/bottom_line.dart';
import 'package:deep_emotions/Screens/Reuseable_widget/headertext.dart';
import 'package:deep_emotions/Screens/Reuseable_widget/orwidget.dart';
import 'package:deep_emotions/Screens/Reuseable_widget/textfield.dart';
import 'package:deep_emotions/Screens/colors_and_other_constants/colors.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _isConfrimpasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.CharcoalBlack,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            left: screenWidth * 0.08,
            right: screenWidth * 0.08,
            top: screenHeight * 0.06, // ✅ Thodi si top padding
          ),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // ✅ Left-align content
            children: [
              HeaderText('Create Account'),
              SizedBox(height: screenHeight * 0.06), // ✅ Thoda gap adjust
              CustomTextField(
                hintText: "Your Full name",
                controller: _nameController,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: screenHeight * 0.02), // ✅ Thoda gap adjust
              CustomTextField(
                hintText: "Your Email Address",
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: screenHeight * 0.02),
              CustomTextField(
                hintText: "Password",
                controller: _passwordController,
              ),
              SizedBox(height: screenHeight * 0.02),
              CustomTextField(
                hintText: "Confirm Password",
                controller: _isConfrimpasswordController,
              ),
              SizedBox(height: screenHeight * 0.08),
              ReusableButton(
                buttonText: 'Sign Up',
                route: '/signIn',
                screenWidth: screenWidth,
                screenHeight: screenHeight,
              ),
              SizedBox(height: screenHeight * 0.02), // ✅ Extra bottom spacing
              OrDivider(),
              SizedBox(height: screenHeight * 0.02), // ✅ Extra bottom spacing
              Reuseablelogo(),
              SizedBox(height: screenHeight * 0.1), // ✅ Extra bottom spacing

              SizedBox(height: screenHeight * 0.13), // ✅ Extra bottom spacing
              BottomLine(screenWidth),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _isConfrimpasswordController.dispose();
    _nameController.dispose();
    super.dispose();
  }
}
