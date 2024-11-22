import 'package:bni_chapter/constants/colors.dart';
import 'package:bni_chapter/routes/app_routes.dart';
import 'package:bni_chapter/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onboarding/onboarding.dart';

final onboardingPagesList = [
  Stack(
    children: [
      Positioned.fill(
        child: SvgPicture.asset(
          'assets/images/intro1.svg',
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
        ),
      ),
      Positioned(
        bottom: 0,
        left: 20,
        right: 20,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 10,
                offset: const Offset(0, 5),
                spreadRadius: 3,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  'Business Connection',
                  style: mBlackTextStyle.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Text(
                  'Expand your professional network through our platform. Connect with potential clients, partners, and collaborators to grow your business and stay ahead in the competitive market.',
                  style: mGreyTextStyle,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  ),
  Stack(
    children: [
      Positioned.fill(
        child: SvgPicture.asset(
          'assets/images/intro2.svg',
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
        ),
      ),
      Positioned(
        bottom: 0,
        left: 20,
        right: 20,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 10,
                offset: const Offset(0, 5),
                spreadRadius: 3,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  'Efficient Meetings',
                  style: mBlackTextStyle.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Text(
                  'Streamline your business communications with our cutting-edge video conferencing tools. Conduct virtual meetings, collaborate on projects, and stay connected with clients.',
                  style: mGreyTextStyle,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  ),
  Stack(
    children: [
      Positioned.fill(
        child: SvgPicture.asset(
          'assets/images/intro3.svg',
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
        ),
      ),
      Positioned(
        bottom: 0,
        left: 20,
        right: 20,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 10,
                offset: const Offset(0, 5),
                spreadRadius: 3,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  'Business Network',
                  style: mBlackTextStyle.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Text(
                  'Expand your professional network through targeted connections. Collaborate with like-minded entrepreneurs and industry experts to gain insights, and drive business growth.',
                  style: mGreyTextStyle,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  ),
  Stack(
    children: [
      Positioned.fill(
        child: Image.asset(
          'assets/images/intro4.jpg',
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
        ),
      ),
      Positioned(
        bottom: 0,
        left: 20,
        right: 20,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 10,
                offset: const Offset(0, 5),
                spreadRadius: 3,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  'Mutual Business Growth',
                  style: mBlackTextStyle.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Text(
                  "Collaborate with partners across industries to achieve mutual goals. Expand market reach, boost revenue, and unlock new growth opportunities.",
                  style: mGreyTextStyle,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  ),
];

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _Intr0ScreenState();
}

class _Intr0ScreenState extends State<IntroScreen> {
  late Material materialButton;
  late int index;
  final activePainter = Paint();
  final inactivePainter = Paint();

  @override
  void initState() {
    super.initState();
    materialButton = _skipButton();
    index = 0;

    activePainter.color = Colors.grey;
    activePainter.strokeWidth = 1;
    activePainter.strokeCap = StrokeCap.round;
    activePainter.style = PaintingStyle.stroke;

    inactivePainter.color = Colors.black;
    inactivePainter.strokeWidth = 1;
    inactivePainter.strokeCap = StrokeCap.round;
    inactivePainter.style = PaintingStyle.fill;
  }

  Material _skipButton({void Function(int)? setIndex}) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      color: defaultSkipButtonColor,
      child: InkWell(
        borderRadius: defaultSkipButtonBorderRadius,
        onTap: () {
          if (setIndex != null) {
            index = 3;
            setIndex(3);
          }
        },
        child: const Padding(
          padding: defaultSkipButtonPadding,
          child: Text(
            'Skip',
            style: defaultSkipButtonTextStyle,
          ),
        ),
      ),
    );
  }

  Material get _signupButton {
    return Material(
      borderRadius: defaultProceedButtonBorderRadius,
      color: defaultProceedButtonColor,
      child: InkWell(
        borderRadius: defaultProceedButtonBorderRadius,
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.loginScreen);
        },
        child: const Padding(
          padding: defaultProceedButtonPadding,
          child: Text(
            'Sign up',
            style: defaultProceedButtonTextStyle,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Onboarding(
          startIndex: 0,
          onPageChanges: (_, __, currentIndex, sd) {
            index = currentIndex;
          },
          swipeableBody: onboardingPagesList,
          buildFooter:
              (context, dragDistance, pagesLength, currentIndex, setIndex, sd) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 0.0,
                  color: Colors.white,
                ),
              ),
              child: ColoredBox(
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Indicator<LinePainter>(
                        painter: LinePainter(
                          currentPageIndex: currentIndex,
                          pagesLength: pagesLength,
                          netDragPercent: dragDistance,
                          activePainter: activePainter,
                          inactivePainter: inactivePainter,
                          showAllActiveIndicators: true,
                          slideDirection: sd,
                          translate: false,
                          lineWidth: 30,
                        ),
                      ),
                      index == pagesLength - 1
                          ? _signupButton
                          : _skipButton(setIndex: setIndex)
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// class TriangleFooterIndicator extends StatefulWidget {
//   const TriangleFooterIndicator({super.key});

//   @override
//   State<TriangleFooterIndicator> createState() =>
//       _TriangleFooterIndicatorState();
// }

// class _TriangleFooterIndicatorState extends State<TriangleFooterIndicator> {
//   late int index;
//   final activePainter = Paint();
//   final inactivePainter = Paint();

//   static const width = 100.0;
//   @override
//   void initState() {
//     super.initState();
//     index = 0;
//     activePainter.color = Colors.white;
//     activePainter.strokeWidth = 1;
//     activePainter.strokeCap = StrokeCap.round;
//     activePainter.style = PaintingStyle.fill;

//     inactivePainter.color = Colors.white;
//     inactivePainter.strokeWidth = 1;
//     inactivePainter.strokeCap = StrokeCap.round;
//     inactivePainter.style = PaintingStyle.stroke;
//   }

//   SizedBox get _signinButton {
//     return SizedBox(
//       width: width,
//       child: Align(
//         alignment: Alignment.centerRight,
//         child: Material(
//           borderRadius: signinButtonBorderRadius,
//           color: signinButtonColor,
//           child: InkWell(
//             borderRadius: signinButtonBorderRadius,
//             onTap: () {},
//             child: const Padding(
//               padding: signinButtonPadding,
//               child: Text(
//                 'Sign in',
//                 style: signinButtonTextStyle,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   SizedBox _skipButton({void Function(int)? setIndex}) {
//     return SizedBox(
//       width: width,
//       child: Align(
//         alignment: Alignment.centerLeft,
//         child: Material(
//           borderRadius: defaultSkipButtonBorderRadius,
//           color: defaultSkipButtonColor,
//           child: InkWell(
//             borderRadius: defaultSkipButtonBorderRadius,
//             onTap: () {
//               if (setIndex != null) {
//                 index = 3;
//                 setIndex(3);
//               }
//             },
//             child: const Padding(
//               padding: defaultSkipButtonPadding,
//               child: Text(
//                 'Skip',
//                 style: defaultSkipButtonTextStyle,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   SizedBox get _signupButton {
//     return SizedBox(
//       width: width,
//       child: Align(
//         alignment: Alignment.centerRight,
//         child: Material(
//           borderRadius: defaultProceedButtonBorderRadius,
//           color: defaultProceedButtonColor,
//           child: InkWell(
//             borderRadius: defaultProceedButtonBorderRadius,
//             onTap: () {},
//             child: const Padding(
//               padding: defaultProceedButtonPadding,
//               child: Text(
//                 'Sign up',
//                 style: defaultProceedButtonTextStyle,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: Scaffold(
//         body: Onboarding(
//           swipeableBody: onboardingPagesList,
//           startIndex: 0,
//           onPageChanges: (_, __, currentIndex, sd) {
//             index = currentIndex;
//           },
//           buildFooter:
//               (context, dragDistance, pagesLength, currentIndex, setIndex, sd) {
//             return DecoratedBox(
//               decoration: BoxDecoration(
//                 color: background,
//                 border: Border.all(
//                   width: 0.0,
//                   color: background,
//                 ),
//               ),
//               child: ColoredBox(
//                 color: background,
//                 child: Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       index != pagesLength - 1
//                           ? _skipButton(setIndex: setIndex)
//                           : const SizedBox(width: width),
//                       Expanded(
//                         child: Container(
//                           padding: const EdgeInsets.only(bottom: 10, right: 80),
//                           alignment: Alignment.centerLeft,
//                           child: Indicator<TrianglePainter>(
//                             painter: TrianglePainter(
//                               currentPageIndex: currentIndex,
//                               pagesLength: pagesLength,
//                               netDragPercent: dragDistance,
//                               activePainter: activePainter,
//                               inactivePainter: inactivePainter,
//                               slideDirection: sd,
//                               showAllActiveIndicators: false,
//                             ),
//                           ),
//                         ),
//                       ),
//                       index != pagesLength - 1 ? _signupButton : _signinButton,
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class CircleFooterIndicator extends StatefulWidget {
//   const CircleFooterIndicator({super.key});

//   @override
//   State<CircleFooterIndicator> createState() => _CircleFooterIndicatorState();
// }

// class _CircleFooterIndicatorState extends State<CircleFooterIndicator> {
//   late int index;
//   final activePainter = Paint();
//   final inactivePainter = Paint();

//   static const width = 100.0;

//   SizedBox _skipButton({void Function(int)? setIndex}) {
//     return SizedBox(
//       width: width,
//       child: Align(
//         alignment: Alignment.centerLeft,
//         child: Material(
//           borderRadius: defaultSkipButtonBorderRadius,
//           color: defaultSkipButtonColor,
//           child: InkWell(
//             borderRadius: defaultSkipButtonBorderRadius,
//             onTap: () {
//               if (setIndex != null) {
//                 index = 3;
//                 setIndex(3);
//               }
//             },
//             child: const Padding(
//               padding: defaultSkipButtonPadding,
//               child: Text(
//                 'Skip',
//                 style: defaultSkipButtonTextStyle,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   SizedBox get _signupButton {
//     return SizedBox(
//       width: width,
//       child: Align(
//         alignment: Alignment.centerLeft,
//         child: Material(
//           borderRadius: defaultProceedButtonBorderRadius,
//           color: defaultProceedButtonColor,
//           child: InkWell(
//             borderRadius: defaultProceedButtonBorderRadius,
//             onTap: () {},
//             child: const Padding(
//               padding: defaultProceedButtonPadding,
//               child: Text(
//                 'Sign up',
//                 style: defaultProceedButtonTextStyle,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void initState() {
//     super.initState();
//     index = 0;
//     activePainter.color = Colors.white;
//     activePainter.strokeWidth = 1;
//     activePainter.strokeCap = StrokeCap.round;
//     activePainter.style = PaintingStyle.fill;

//     inactivePainter.color = Colors.white;
//     inactivePainter.strokeWidth = 1;
//     inactivePainter.strokeCap = StrokeCap.round;
//     inactivePainter.style = PaintingStyle.stroke;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Onboarding FooterIndicator 2',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: Scaffold(
//         body: Onboarding(
//           swipeableBody: onboardingPagesList,
//           startIndex: 0,
//           onPageChanges: (_, __, currentIndex, sd) {
//             index = currentIndex;
//           },
//           buildFooter:
//               (context, dragDistance, pagesLength, currentIndex, setIndex, sd) {
//             return DecoratedBox(
//               decoration: BoxDecoration(
//                 color: background,
//                 border: Border.all(
//                   width: 0.0,
//                   color: background,
//                 ),
//               ),
//               child: ColoredBox(
//                 color: background,
//                 child: Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       index != pagesLength - 1
//                           ? _skipButton(setIndex: setIndex)
//                           : _signupButton,
//                       Padding(
//                         padding: const EdgeInsets.only(right: 45.0),
//                         child: Indicator<CirclePainter>(
//                           painter: CirclePainter(
//                             currentPageIndex: currentIndex,
//                             pagesLength: pagesLength,
//                             netDragPercent: dragDistance,
//                             activePainter: activePainter,
//                             inactivePainter: inactivePainter,
//                             slideDirection: sd,
//                             radius: 5.0,
//                             space: 10.0,
//                             showAllActiveIndicators: false,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class SquareFooterIndicator extends StatefulWidget {
//   const SquareFooterIndicator({super.key});

//   @override
//   State<SquareFooterIndicator> createState() => _SquareFooterIndicatorState();
// }

// class _SquareFooterIndicatorState extends State<SquareFooterIndicator> {
//   late int index;
//   final activePainter = Paint();
//   final inactivePainter = Paint();

//   static const width = 100.0;
//   @override
//   void initState() {
//     super.initState();
//     index = 0;
//     activePainter.color = Colors.white;
//     activePainter.strokeWidth = 1;
//     activePainter.strokeCap = StrokeCap.round;
//     activePainter.style = PaintingStyle.fill;

//     inactivePainter.color = Colors.white;
//     inactivePainter.strokeWidth = 1;
//     inactivePainter.strokeCap = StrokeCap.round;
//     inactivePainter.style = PaintingStyle.stroke;
//   }

//   SizedBox _skipButton({void Function(int)? setIndex}) {
//     return SizedBox(
//       width: width,
//       child: Align(
//         alignment: Alignment.centerLeft,
//         child: Material(
//           borderRadius: defaultSkipButtonBorderRadius,
//           color: defaultSkipButtonColor,
//           child: InkWell(
//             borderRadius: defaultSkipButtonBorderRadius,
//             onTap: () {
//               if (setIndex != null) {
//                 index = 3;
//                 setIndex(3);
//               }
//             },
//             child: const Padding(
//               padding: defaultSkipButtonPadding,
//               child: Text(
//                 'Skip',
//                 style: defaultSkipButtonTextStyle,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   SizedBox get _signupButton {
//     return SizedBox(
//       width: width,
//       child: Align(
//         alignment: Alignment.centerLeft,
//         child: Material(
//           borderRadius: defaultProceedButtonBorderRadius,
//           color: defaultProceedButtonColor,
//           child: InkWell(
//             borderRadius: defaultProceedButtonBorderRadius,
//             onTap: () {},
//             child: const Padding(
//               padding: defaultProceedButtonPadding,
//               child: Text(
//                 'Sign up',
//                 style: defaultProceedButtonTextStyle,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Onboarding FooterIndicator 2',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: Scaffold(
//         body: Onboarding(
//             swipeableBody: onboardingPagesList,
//             startIndex: 0,
//             onPageChanges: (_, __, currentIndex, sd) {
//               index = currentIndex;
//             },
//             buildFooter: (context, dragDistance, pagesLength, currentIndex,
//                 setIndex, sd) {
//               return DecoratedBox(
//                 decoration: BoxDecoration(
//                   color: background,
//                   border: Border.all(
//                     width: 0.0,
//                     color: background,
//                   ),
//                 ),
//                 child: ColoredBox(
//                   color: background,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 20, vertical: 40),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         index != pagesLength - 1
//                             ? _skipButton(setIndex: setIndex)
//                             : _signupButton,
//                         Padding(
//                           padding: const EdgeInsets.only(right: 45.0),
//                           child: Indicator<SquarePainter>(
//                             painter: SquarePainter(
//                               currentPageIndex: index,
//                               pagesLength: pagesLength,
//                               netDragPercent: dragDistance,
//                               activePainter: activePainter,
//                               inactivePainter: inactivePainter,
//                               slideDirection: sd,
//                               space: 5,
//                               width: 10,
//                               showAllActiveIndicators: false,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             }),
//       ),
//     );
//   }
// }