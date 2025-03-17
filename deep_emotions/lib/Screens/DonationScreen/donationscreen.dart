import 'package:deep_emotions/Screens/Reuseable_widget/Button.dart';
import 'package:flutter/material.dart';
import 'package:deep_emotions/Screens/Reuseable_widget/firstcontainer.dart';
import 'package:deep_emotions/Screens/colors_and_other_constants/colors.dart';
import 'package:go_router/go_router.dart';

class DonationScreen extends StatefulWidget {
  const DonationScreen({super.key});

  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  int? selectedIndex;
  final List<int> amounts = [150, 50, 30, 150, 50, 30]; // Amount options

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.CharcoalBlack,
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildTopBar(
                screenWidth,
                screenHeight,
                context,
              ), // ✅ Fixed function call
              SizedBox(height: screenHeight * 0.04),
              buildImageSection(screenWidth, screenHeight),
              SizedBox(height: screenHeight * 0.02),
              buildDonationText(),
              SizedBox(height: screenHeight * 0.03),
              buildAmountInput(screenHeight),
              SizedBox(height: screenHeight * 0.03),
              buildAmountGrid(),
              SizedBox(height: screenHeight * 0.03),
              ReusableButton(
                buttonText: 'I\'m happy to help',
                route: '/home',
                screenWidth: screenWidth,
                screenHeight: screenHeight,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// 🟢 **Top Navigation Bar**
  Widget buildTopBar(
    double screenWidth,
    double screenHeight,
    BuildContext context,
  ) {
    return Padding(
      padding: EdgeInsets.only(
        top: screenHeight * 0.04,
        left: screenWidth * 0.05,
        right: screenWidth * 0.05,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// 🔹 **Back Button with Gesture Effect & Navigation**
          GestureDetector(
            onTap: () {
              GoRouter.of(context).go('/notification'); // ✅ Fixed navigation
            },
            child: Icon(
              Icons.arrow_back,
              color: AppColors.GoldCream,
              size: screenHeight * 0.04,
            ),
          ),

          /// 🔹 **Title**
          Text(
            'Donation',
            style: TextStyle(
              color: Colors.white,
              fontSize: screenHeight * 0.025,
            ),
          ),

          /// 🔹 **Empty Space for Balancing**
          SizedBox(width: screenHeight * 0.04),
        ],
      ),
    );
  }

  /// 🟢 **Image Section**
  Widget buildImageSection(double screenWidth, double screenHeight) {
    return Center(
      child: FirstContainerImage(
        imagePath: 'assets/LastImage.png',
        screenWidth: screenWidth,
        screenHeight: screenHeight,
      ),
    );
  }

  /// 🟢 **Donation Prompt Text**
  Widget buildDonationText() {
    return const Text(
      'How much you would like to donate?',
      style: TextStyle(color: Colors.white, fontSize: 18),
      textAlign: TextAlign.center,
    );
  }

  /// 🟢 **"Enter Amount" Input Box**
  Widget buildAmountInput(double screenHeight) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: screenHeight * 0.06,
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.white),
        child: const Center(
          child: Text(
            'Enter Amount',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
        ),
      ),
    );
  }

  /// 🟢 **Grid of Donation Amounts**
  Widget buildAmountGrid() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(), // Prevent scrolling
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 columns
          crossAxisSpacing: 110, // ✅ Reduced spacing for better layout
          mainAxisSpacing: 10, // Vertical spacing
          mainAxisExtent: 58, // Fixed height
        ),
        itemCount: amounts.length,
        itemBuilder: (context, index) {
          return AmountButton(
            amount: amounts[index],
            isSelected: selectedIndex == index,
            onTap: () {
              setState(() {
                selectedIndex = index; // Update selection
              });
            },
          );
        },
      ),
    );
  }
}

/// 🟢 **Custom Amount Button Widget**
class AmountButton extends StatelessWidget {
  final int amount;
  final bool isSelected;
  final VoidCallback onTap;

  const AmountButton({
    required this.amount,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 42, // ✅ Half the previous width (was 85)
        height: 58,
        decoration: BoxDecoration(
          color: isSelected ? Colors.green : Colors.grey[900],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isSelected ? Colors.green : Colors.white,
            width: 0.5,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          '\$$amount',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
