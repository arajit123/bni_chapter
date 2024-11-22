import 'package:bni_chapter/extra/sample.dart';
import 'package:bni_chapter/routes/app_routes.dart';
import 'package:bni_chapter/screens/Tabs/chapter%20details/chapter_details.dart';
import 'package:bni_chapter/screens/Tabs/home_container_screen.dart';
import 'package:bni_chapter/screens/authentication/login_screen.dart';
import 'package:bni_chapter/screens/authentication/passcode_verification.dart';
import 'package:bni_chapter/screens/authentication/register_screend.dart';
import 'package:bni_chapter/screens/onboarding/intro_screen.dart';
import 'package:bni_chapter/screens/onboarding/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class RouteHandler extends StatelessWidget {
  final RouteSettings settings;
  const RouteHandler({super.key, required this.settings});

  Route<dynamic>? generateRoute() {
    switch (settings.name) {
      case AppRoutes.splashScreen:
        return PageTransition(
          child: const SplashScreen(),
          type: PageTransitionType.fade,
          settings: settings,
        );
      case AppRoutes.introScreen:
        return PageTransition(
          child: const IntroScreen(),
          type: PageTransitionType.fade,
          settings: settings,
        );
      case AppRoutes.loginScreen:
        return PageTransition(
          child: const LoginScreen(),
          type: PageTransitionType.rightToLeft,
          settings: settings,
        );
      case AppRoutes.signUpScreen:
        return PageTransition(
          child: const SignUpScreen(),
          type: PageTransitionType.rightToLeft,
          settings: settings,
        );
      case AppRoutes.homeScreenContainer:
        return PageTransition(
          child: const HomeContainerScreen(),
          type: PageTransitionType.fade,
          settings: settings,
        );
        case AppRoutes.chapterDetails:
        return PageTransition(
          child: const ChapterDetailsPage(),
          type: PageTransitionType.rightToLeft,
          settings: settings,
        );
         case AppRoutes.sample:
        return PageTransition(
          child:  AdvancedSliverAppBar(),
          type: PageTransitionType.fade,
          settings: settings,
        );
         case AppRoutes.passcodeVerificationPage:
        return PageTransition(
          child:  const PasscodeVerificationPage(),
          type: PageTransitionType.fade,
          settings: settings,
        );
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) => generateRoute(),
    );
  }
}
