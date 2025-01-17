import 'dart:async';
import 'dart:convert';
import 'package:bni_chapter/constants/colors.dart';
import 'package:bni_chapter/routes/app_routes.dart';
import 'package:bni_chapter/screens/Tabs/home_screen.dart';
import 'package:bni_chapter/widgets/common_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:pin_code_fields/pin_code_fields.dart'; // Ensure you have this package in your pubspec.yaml

class PasscodeVerificationPage extends StatefulWidget {
  const PasscodeVerificationPage({super.key});

  @override
  State<PasscodeVerificationPage> createState() =>
      _PasscodeVerificationPageState();
}

class _PasscodeVerificationPageState extends State<PasscodeVerificationPage> {
  late Timer _timer;
  int _start = 60; // Countdown start time in seconds
  String _otp = '1234';
  bool _isResending = false; // Flag to handle resend state

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (_start == 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  String get _timerText {
    int minutes = _start ~/ 60;
    int seconds = _start % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  Future<void> _verifyOtp() async {
    final String responseBody = jsonEncode(<String, String>{
      'otp': _otp,
      'deviceId': 'your_device_id', // Static device ID
      'userId': 'your_user_id', // Static user ID
    });
    if (_otp.isEmpty || _otp.length != 4) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a valid OTP')),
      );
      return;
    }

    try {
      if (_otp == '1234') {
        // Successfully verified OTP

        // Navigate to your registration page
        Navigator.pushNamed(context, AppRoutes.homeScreenContainer);
      } else {
        // Failed to verify OTP
        print('Failed to verify OTP');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('OTP verification failed')),
        );
      }
    } catch (e) {
      print('Error occurred while verifying OTP: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Error occurred while verifying OTP')),
      );
    }
  }

  Future<void> _resendOtp() async {
    setState(() {
      _isResending = true;
    });

    try {
      final response = await http.post(
        Uri.parse('http://devapiv4.dealsdray.com/api/v2/user/otp'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'mobileNumber': 'your_mobile_number', // Static mobile number
          'deviceId': 'your_device_id', // Static device ID
        }),
      );
      print(response.statusCode);

      if (response.statusCode == 200) {
        // Successfully resent OTP
        print('OTP resend successful: ${response.body}');
        setState(() {
          _start = 60; // Reset timer
          _startTimer(); // Restart timer
          _isResending = false;
        });
      } else {
        // Failed to resend OTP
        print('Failed to resend OTP');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to resend OTP')),
        );
        setState(() {
          _isResending = false;
        });
      }
    } catch (e) {
      print('Error occurred while resending OTP: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Error occurred while resending OTP')),
      );
      setState(() {
        _isResending = false;
      });
    }
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: "OTP Verification Page"),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15.h,
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(
            //     horizontal: 20,
            //   ),
            //   child: IconButton(
            //     onPressed: () {
            //       Navigator.pop(context);
            //     },
            //     icon: const Icon(Icons.arrow_back_ios),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(
            //     horizontal: 20,
            //   ),
            //   child: Image.asset(
            //     'assets/images/otp.png',
            //     height: 300.h,
            //     width: 100.w,
            //   ),
            // ),
            // const SizedBox(height: 20),
            SizedBox(
              height: 150.h,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "OTP Verification",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: blueTextColor),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Text(
                "We have sent a unique OTP number to your mobile +91-7074050963",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16.sp, color: Colors.black54),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(9),
                  fieldHeight: 50,
                  fieldWidth: 50,
                  activeFillColor: Colors.white,
                  inactiveColor: Colors.grey,
                  activeColor: Colors.red,
                  selectedColor: Colors.grey,
                ),
                onChanged: (value) {
                  setState(() {
                    _otp = value;
                  });
                  // Automatically verify OTP when it is filled
                  if (value.length == 4) {
                    _verifyOtp();
                  }
                },
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_timerText), // Display the countdown timer
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: iconColor,
                      // disabledBackgroundColor: Colors.white,
                    ),
                    onPressed: _start == 0 && !_isResending
                        ? () {
                            _resendOtp();
                          }
                        : null,
                    child: GestureDetector(
                      onTap: () {
                        if (_start == 0 && !_isResending) {
                          _resendOtp();
                        }
                      },
                      child: Container(
                        decoration: const BoxDecoration(),
                        child: Text(
                          _isResending ? 'Resending...' : 'SEND AGAIN',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: backgroundColor,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
