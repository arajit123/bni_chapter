import 'package:bni_chapter/constants/colors.dart';
import 'package:bni_chapter/routes/app_routes.dart';
// import 'package:bni_chapter/widgets/common_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 10.h),
          Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: Text(
              'Your Chapter',
              style: TextStyle(
                color: primaryColor,
                fontFamily: "CustomFont1",
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.chapterDetails);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
              child: Container(
                height: 230.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(1, 1),
                      color: Colors.grey.shade400,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image with Positioned Date
                    Stack(
                      children: [
                        // Profile Image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.network(
                            'https://media.istockphoto.com/id/1827291486/photo/a-dedicated-mentor-is-explaining-mentees-importance-of-project-while-sitting-at-the-boardroom.jpg?s=612x612&w=0&k=20&c=whMTmOCyOUfNqoNBe8GPlmcNUM-aCfqD-0whdFPQpO4=',
                            height: 230.h,
                            width: 160.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                        // Positioned Date Container
                        Positioned(
                          top: 10.h,
                          left: 10.w,
                          child: Container(
                            padding: EdgeInsets.all(5.w),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: Text(
                              '12 Sep 2024', // Replace with dynamic date if needed
                              style: TextStyle(
                                color: iconColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Chapter Info (Chapter name, date, time, location)
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.h, horizontal: 6.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'BNI Odyssey', // Replace with dynamic chapter name
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'CustomFont2',
                                color: blueTextColor,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month_outlined,
                                  size: 16.sp,
                                  color: iconColor,
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  'Friday, 12 Sep,24', // Dynamic Date
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontFamily: 'CustomFont2'),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  size: 16.sp,
                                  color: iconColor,
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  '10:00 AM GMT+5:30', // Dynamic Time
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontFamily: 'CustomFont1'),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 16.sp,
                                  color: iconColor,
                                ),
                                SizedBox(width: 5.w),
                                Flexible(
                                  child: Text(
                                    '3rd Floor,BEML 5th Stage,Rajarajeshwari Nagar,Bengaluru, Karnataka 560098', // Dynamic Location
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: 'CustomFont2'),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 6,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
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

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const CustomAppBar({super.key}) : preferredSize = const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white, // Ensuring a solid background
      elevation: 2,
      surfaceTintColor: Colors.white,

      shadowColor: Colors.grey
          .withOpacity(0.5), // Adjust shadow opacity for better visibility
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 18.r,
            backgroundImage: const AssetImage("assets/images/profile6.jpg"),
          ),
          SizedBox(width: 90.w), // Adjust as needed for left padding
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 18.h,
                width: 90.w,
                child: Image.network(
                  'https://i.pinimg.com/736x/60/2a/fe/602afe21a5c0bea11f58d46502511a4f.jpg',
                  height: 80.h, // Adjust size to fit within app bar
                  width: 80.w,
                ),
              ),
              Text(
                'Chapter',
                style: TextStyle(
                  fontFamily: 'CustomFont2',
                  fontSize: 18.sp, // Adjust font size
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const Spacer(), // To push the avatar to the right
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_active_outlined,
                size: 25.sp,
                color: iconColor,
              ))
        ],
      ),
    );
  }
}
