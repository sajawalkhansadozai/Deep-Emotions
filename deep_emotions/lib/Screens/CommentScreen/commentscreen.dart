import 'package:deep_emotions/Screens/Reuseable_widget/CamiioRow.dart';
import 'package:deep_emotions/Screens/Reuseable_widget/CommentTopICons.dart';
import 'package:deep_emotions/Screens/Reuseable_widget/SameImages.dart';
import 'package:deep_emotions/Screens/Reuseable_widget/bottom_line.dart';
import 'package:deep_emotions/Screens/Reuseable_widget/heartRow.dart';
import 'package:deep_emotions/Screens/colors_and_other_constants/colors.dart';
import 'package:flutter/material.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width; // Define screenWidth

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.CharcoalBlack,
        body: Column(
          children: [
            const CommentTopIcons(),
            const Camiiorow(),
            const SameImage(imagePath: 'assets/videoImage3.jpg'),
            const HeartLine(),
            const TextWidget(),
            const SizedBox(height: 30),
            BottomStack(screenWidth), // Pass screenWidth
          ],
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '😊😊 These little animals are so parhetic.     \nWe should help these.....',
      style: TextStyle(color: Colors.white),
    );
  }
}

class BottomStack extends StatelessWidget {
  final double screenWidth;

  const BottomStack(this.screenWidth, {super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 340,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.CreamBlack,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), // Use Radius.circular
              topRight: Radius.circular(20), // Use Radius.circular
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: BottomLine(screenWidth),
        ), // Pass screenWidth
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 40),
          child: CommentTextWidget(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 80),
          child: WriteCommentContainer(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150),
          child: CommentWidget(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 240),
          child: CommentWidget(),
        ),
      ],
    );
  }
}

Widget CommentTextWidget() {
  return Container(
    height: 25,
    width: 100,
    decoration: BoxDecoration(
      color: AppColors.GoldCream,
      borderRadius: BorderRadius.circular(30),
    ),
    child: Center(child: Text("Comments")),
  );
}

Widget WriteCommentContainer() {
  return Stack(
    children: [
      Container(
        height: 52,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(187, 100, 96, 96),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: [
              ClipOval(
                child: Container(
                  height: 25,
                  width: 25,

                  child: Image.asset('assets/comment.jpg'),
                ),
              ),
              SizedBox(width: 10),
              Text('Write Comments', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget CommentWidget() {
  return Column(
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(
              height: 30,
              width: 30,

              child: ClipOval(child: Image.asset('assets/comment.jpg')),
            ),
          ),
          SizedBox(width: 10),
          Text('Willson', style: TextStyle(color: Colors.grey)),
          SizedBox(width: 230),
          Icon(Icons.favorite, color: Colors.redAccent, size: 15),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 70),
        child: Row(
          children: List.generate(5, (index) {
            return Icon(Icons.star, size: 12, color: Colors.yellow);
          }),
        ),
      ),
      Text(
        'This scenery looks really nice and cool.\nWhat do you think.',
        style: TextStyle(color: Colors.white, fontSize: 13),
      ),
    ],
  );
}
