import 'package:bni_chapter/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title; // Added title parameter

  const CommonAppBar({
    super.key,
    required this.title, // Pass the title as a required parameter
  }) : preferredSize = const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: iconColor, // Ensuring a solid background
      elevation: 2,
      surfaceTintColor: Colors.white,
      shadowColor: Colors.white.withOpacity(0.5), // Adjust shadow opacity for better visibility
      title: Text(
        title, // Set the title dynamically
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'CustomFont2',
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
          size: 25.sp,
        ),
        onPressed: () {
          Navigator.of(context).pop(); // Add back button functionality
        },
      ),
    );
  }
}
