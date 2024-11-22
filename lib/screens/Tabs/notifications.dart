import 'package:bni_chapter/constants/colors.dart';
import 'package:bni_chapter/utils/text_style.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: signinButtonColor,
        centerTitle: true,
        title: Text(
          'Notifications',
          style: appBartextStyle,
        ),
      ),
      body: Center(
        child: Text(
          "Notifications Screen",
          style: mBlackTextStyle,
        ),
      ),
    );
  }
}
