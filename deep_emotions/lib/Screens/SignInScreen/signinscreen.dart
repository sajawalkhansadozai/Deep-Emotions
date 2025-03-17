import 'package:deep_emotions/Screens/Reuseable_widget/Button.dart';
import 'package:deep_emotions/Screens/Reuseable_widget/ReuseableRichText.dart';
import 'package:deep_emotions/Screens/Reuseable_widget/Reuseablelogo.dart';
import 'package:deep_emotions/Screens/Reuseable_widget/bottom_line.dart';
import 'package:deep_emotions/Screens/Reuseable_widget/customcheckbox.dart';
import 'package:deep_emotions/Screens/Reuseable_widget/headertext.dart';
import 'package:deep_emotions/Screens/Reuseable_widget/orwidget.dart';
import 'package:deep_emotions/Screens/Reuseable_widget/textfield.dart';
import 'package:deep_emotions/Screens/colors_and_other_constants/colors.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _rememberMe = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
              HeaderText('Sign In'),
              SizedBox(height: screenHeight * 0.1), // ✅ Thoda gap adjust
              CustomTextField(
                hintText: "Your email address",
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: screenHeight * 0.03),
              CustomTextField(
                hintText: "Password",
                controller: _passwordController,
                isPassword: true,
                elevation: 5,
              ),
              SizedBox(height: screenHeight * 0.04),
              CustomCheckbox(
                label: "Remember Me",
                value: _rememberMe,
                onChanged: (bool newValue) {
                  setState(() {
                    _rememberMe = newValue;
                  });
                },
              ),
              SizedBox(height: screenHeight * 0.06),
              ReusableButton(
                buttonText: 'Sign In',
                route: '/home',
                screenWidth: screenWidth,
                screenHeight: screenHeight,
              ),
              SizedBox(height: screenHeight * 0.02), // ✅ Extra bottom spacing
              OrDivider(),
              SizedBox(height: screenHeight * 0.02), // ✅ Extra bottom spacing
              Reuseablelogo(),
              SizedBox(height: screenHeight * 0.1), // ✅ Extra bottom spacing
              Center(
                child: RichTextWidget(
                  context: context,
                  route2: '/signUp',
                  text1: 'Don\'t have an Account ? ',
                  text2: 'Sign Up',
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                ),
              ),
              SizedBox(height: screenHeight * 0.15), // ✅ Extra bottom spacing
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
    super.dispose();
  }
}
