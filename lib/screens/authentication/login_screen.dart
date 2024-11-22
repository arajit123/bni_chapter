import 'package:bni_chapter/routes/app_routes.dart';
import 'package:bni_chapter/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bni_chapter/constants/colors.dart'; // Replace with your actual path
import 'package:bni_chapter/utils/text_style.dart'; // Replace with your actual path
 // Replace with your actual path

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _countryCode = TextEditingController();

  @override
  void initState() {
    _countryCode.text = '+91'; // Default country code
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background gradient and circles
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 500.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFD11D27), // Dark red
                    Colors.white, // White
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Stack(
                children: [
                  // Circle 1 - Large circle in top left
                  Positioned(
                    top: -50,
                    left: -60,
                    child: Container(
                      width: 200.w,
                      height: 200.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.2),
                      ),
                    ),
                  ),
                  // Circle 2 - Medium size, darker red
                  Positioned(
                    top: 100,
                    right: -40,
                    child: Container(
                      width: 150.w,
                      height: 150.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red.withOpacity(0.5),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: -40,
                    child: Container(
                      width: 150.w,
                      height: 150.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: redColor.withOpacity(0.5),
                      ),
                    ),
                  ),
                  // Centered text and image
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "BNI CHAPTERS",
                          style: TextStyle(
                            color: backgroundColor,
                            fontSize: 35.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'CustomFont2',
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          "Connect, Expand, Grow",
                          style: TextStyle(
                            color: blueTextColor,
                            fontSize: 23.sp,
                            fontFamily: "CustomFont3",
                          ),
                        ),
                        SizedBox(height: 20.h),
                        // Profile Image Section
                        SizedBox(
                          width: double.infinity,
                          height: 80.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              // Profile avatars (multiple positions)
                              Positioned(
                                left: 35.w,
                                child: CircleAvatar(
                                  radius: 25.r,
                                  backgroundImage: const AssetImage(
                                      "assets/images/profile1.jpg"),
                                ),
                              ),
                              Positioned(
                                right: 35.w,
                                child: CircleAvatar(
                                  radius: 25.r,
                                  backgroundImage:
                                      AssetImage("assets/images/profile7.jpg"),
                                ),
                              ),
                              Positioned(
                                right: 75.w,
                                child: CircleAvatar(
                                  radius: 25.r,
                                  backgroundImage:
                                      AssetImage("assets/images/profile4.jpg"),
                                ),
                              ),
                              Positioned(
                                left: 75.w,
                                child: CircleAvatar(
                                  radius: 25.r,
                                  backgroundImage:
                                      AssetImage("assets/images/profile4.jpg"),
                                ),
                              ),
                              Positioned(
                                right: 115.w,
                                child: CircleAvatar(
                                  radius: 30.r,
                                  backgroundImage:
                                      AssetImage("assets/images/profile5.jpg"),
                                ),
                              ),
                              Positioned(
                                left: 115.w,
                                child: CircleAvatar(
                                  radius: 30.r,
                                  backgroundImage:
                                      AssetImage("assets/images/profile6.jpg"),
                                ),
                              ),
                              // Center avatar (larger)
                              CircleAvatar(
                                radius: 35.r,
                                backgroundImage:
                                    AssetImage("assets/images/profile3.jpg"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Login Form Container
          Positioned(
            top: 370.h,
            left: 0,
            right: 0,
            child: Container(
              height: 700.h,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login With Your Mobile Number",
                      style: mBlackTextStyle.copyWith(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: blueTextColor,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    // Phone Number Input with Country Code
                    Container(
                      height: 55.h,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: primaryColor),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 60.w,
                            child: TextField(
                              controller: _countryCode,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '+91',
                                hintStyle: TextStyle(color: primaryColor),
                                contentPadding: EdgeInsets.only(left: 10.w),
                              ),
                              keyboardType: TextInputType.phone,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                          const VerticalDivider(
                            color:primaryColor,
                            width: 1,
                          ),
                          Expanded(
                            child: TextField(
                              controller: _phoneController,
                              keyboardType: TextInputType.phone,
                              textInputAction: TextInputAction.done,
                              // maxLength: 10,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter Your 10 Digit Phone Number',
                                hintStyle: TextStyle(color: primaryColor),
                                contentPadding: EdgeInsets.only(left: 10.w),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    CustomButton(text: "Send Code", onPressed: (){
                       Navigator.pushNamed(context, AppRoutes.passcodeVerificationPage);
                    })
                    // Additional login fields or buttons can be added here
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
