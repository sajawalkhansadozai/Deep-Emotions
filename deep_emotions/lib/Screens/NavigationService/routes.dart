import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../CommentScreen/commentscreen.dart';
import '../DonationScreen/donationscreen.dart';
import '../HomeScreen/homescreen.dart';
import '../NotificationScreen/notificationscreen.dart';
import '../OnBoardingScreen/onboarding.dart';
import '../SignInScreen/signinscreen.dart';
import '../SignUpScreen/signupscreen.dart';
import '../SplashScreen/splashscreen.dart';
import '../VideoPlayerScreen/videoplayerscreen.dart';

// ✅ Add a Global Navigator Key
final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey, // ✅ Prevents conflicts
  initialLocation: '/', // Default opening screen
  routes: [
    GoRoute(path: '/', builder: (context, state) => SplashScreen()),
    GoRoute(path: '/home', builder: (context, state) => HomeScreen()),
    GoRoute(path: '/signIn', builder: (context, state) => SignInScreen()),
    GoRoute(path: '/signUp', builder: (context, state) => SignUpScreen()),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => OnBoardingScreen(),
    ),
    GoRoute(path: '/donation', builder: (context, state) => DonationScreen()),
    GoRoute(path: '/comment', builder: (context, state) => CommentScreen()),
    GoRoute(
      path: '/notification',
      builder: (context, state) => NotificationScreen(),
    ),
    GoRoute(
      path: '/videoPlayer',
      builder: (context, state) => VideoPlayerScreen(),
    ),
  ],
);
