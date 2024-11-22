import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bni_chapter/screens/onboarding/intro_screen.dart';
import 'package:bni_chapter/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // BNI Logo
          Image.asset(
            'assets/images/bni_logo.png',
            fit: BoxFit.contain,
            height: 140,
            width: 200,
          ),
          const SizedBox(height: 20),
          // BNI Chapter Title
          Text(
            "BNI CHAPTER",
            style: mBlackTextStyle.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          // Loading Indicator
          const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
          ),
        ],
      ),
      backgroundColor: Colors.white, // Background color for the splash screen.
      nextScreen: const IntroScreen(),
      splashIconSize: 250, // Size of the splash icon area.
      duration: 3000, // Duration in milliseconds.
      splashTransition:
          SplashTransition.fadeTransition, // Fade effect transition.
      pageTransitionType:
          PageTransitionType.fade, // Fade transition between screens.
    );
  }
}
