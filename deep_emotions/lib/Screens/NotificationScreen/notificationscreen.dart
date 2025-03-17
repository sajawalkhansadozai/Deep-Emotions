import 'package:deep_emotions/Screens/Reuseable_widget/DeepEmotionsRow.dart';
import 'package:deep_emotions/Screens/colors_and_other_constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.CharcoalBlack,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Deepemotionsrow(),
              SecondRow(context), // Pass context
              ThirdComponent(
                context,
                profileImagePath: 'assets/carmiio.png',
                workImagePath: 'assets/work1.jpg',
              ),
              divider(context),
              ThirdComponent(
                context,
                profileImagePath: 'assets/carmiio.png',
                workImagePath: 'assets/work2.jpg',
              ),
              divider(context),
              ThirdComponent(
                context,
                profileImagePath: 'assets/comment.jpg',
                workImagePath: 'assets/work3.jpg',
              ),
              divider(context),
              ThirdComponent(
                context,
                profileImagePath: 'assets/person1.jpg',
                workImagePath: 'assets/work4.jpg',
              ),
              divider(context),
              ThirdComponent(
                context,
                profileImagePath: 'assets/person1.jpg',
                workImagePath: 'assets/work5.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Helper function for the divider
Widget divider(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.001,
      left: MediaQuery.of(context).size.width * 0.03,
      right: MediaQuery.of(context).size.width * 0.03,
    ),
    child: Divider(color: Colors.grey),
  );
}

// ✅ Pass BuildContext to use MediaQuery correctly
Widget SecondRow(BuildContext context) {
  return Row(
    children: [
      Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.04,
          left: MediaQuery.of(context).size.width * 0.08,
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.04,
          width: MediaQuery.of(context).size.width * 0.2,
          decoration: BoxDecoration(
            color: AppColors.GoldCream,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              'Notice',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.15,
          top: MediaQuery.of(context).size.height * 0.04,
        ),
        child: GestureDetector(
          onTap: () {
            GoRouter.of(
              context,
            ).go('/donation'); // Navigate to your desired route
          },
          child: Text(
            'Inbox',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              decoration:
                  TextDecoration.underline, // Optional: Makes it look clickable
            ),
          ),
        ),
      ),
    ],
  );
}

// ✅ Pass BuildContext to use MediaQuery correctly
Widget ThirdComponent(
  BuildContext context, {
  required String profileImagePath,
  required String workImagePath,
}) {
  return Row(
    children: [
      // Profile Image
      Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.04,
          left: MediaQuery.of(context).size.width * 0.08,
        ),
        child: ClipOval(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.12,
            child: Image.asset(profileImagePath, fit: BoxFit.cover),
          ),
        ),
      ),

      // RichText for User Info
      Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.03,
          left: MediaQuery.of(context).size.width * 0.05,
        ),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Welcium',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: '\nLiked your work\n1 hour ago',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        ),
      ),

      // Work Image
      Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.2,
          top: MediaQuery.of(context).size.height * 0.03,
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width * 0.25,
          child: Image.asset(workImagePath, fit: BoxFit.cover),
        ),
      ),
    ],
  );
}
