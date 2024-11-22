import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bni_chapter/constants/colors.dart';

class ChapterDetailsPage extends StatelessWidget {
  const ChapterDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          // Sliver AppBar with BNI title and background image
          SliverAppBar(
            backgroundColor: iconColor,
            stretch: true,
            stretchTriggerOffset: 100,
            floating: true,
            pinned: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            expandedHeight: 250.h,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              collapseMode: CollapseMode.parallax,
              stretchModes: const [StretchMode.zoomBackground],
              title: Text(
                'BNI Odyssey',
                style: TextStyle(
                  fontFamily: 'CustomFont',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              background: Image.network(
                'https://media.istockphoto.com/id/1827291486/photo/a-dedicated-mentor-is-explaining-mentees-importance-of-project-while-sitting-at-the-boardroom.jpg?s=612x612&w=0&k=20&c=whMTmOCyOUfNqoNBe8GPlmcNUM-aCfqD-0whdFPQpO4=',
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Content area
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),

                  // Date and Time Section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month_outlined,
                            size: 24.sp,
                            color: iconColor,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            'Saturday 5 October, 2024',
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: primaryColor,
                              fontFamily: 'CustomFont2',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Padding(
                        padding: EdgeInsets.only(left: 34.0.w),
                        child: Text(
                          '9.30 AM - 4.30 PM IST',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black54.withOpacity(0.1),
                    thickness: 1,
                  ),

                  // Location Section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 24.sp,
                            color: iconColor,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            'Hotel Abroad',
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: primaryColor,
                              fontFamily: 'CustomFont2',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Padding(
                        padding: EdgeInsets.only(left: 34.0.w),
                        child: Text(
                          '3rd Floor, BEML 5th Stage, Rajarajeshwari Nagar,'
                          'Bengaluru, Karnataka 560098',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black54.withOpacity(0.1),
                    thickness: 1,
                  ),
                  SizedBox(height: 10.h),

                  // Hosting and Going Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Hosting (3)',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: primaryColor,
                              fontFamily: 'CustomFont2',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // SizedBox(height: 5.h),
                          SizedBox(
                            height: 80.h,
                            width: 110.w,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  left: 0,
                                  child: CircleAvatar(
                                    radius: 18.r,
                                    backgroundImage: const NetworkImage(
                                      'https://cdn3.pixelcut.app/1/3/profile_picture_1728ecf2bd.jpg',
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 30,
                                  child: CircleAvatar(
                                    radius: 18.r,
                                    backgroundImage: const NetworkImage(
                                      'https://img.freepik.com/fotos-premium/perfil-do-cliente-de-gestao-de-activos_1104763-33440.jpg',
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 60,
                                  child: CircleAvatar(
                                    radius: 18.r,
                                    backgroundImage: const NetworkImage(
                                      'https://www.shutterstock.com/image-photo/happy-handsome-caucasian-man-casual-260nw-2378378987.jpg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Going (50)',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: primaryColor,
                              fontFamily: 'CustomFont2',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // SizedBox(height: 5.h),
                          SizedBox(
                            height: 80.h,
                            width: 150.w,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  left: 0,
                                  child: CircleAvatar(
                                    radius: 18.r,
                                    backgroundImage: const NetworkImage(
                                      'https://www.shutterstock.com/image-photo/portrait-serious-confident-businessman-entrepreneur-260nw-2022462281.jpg',
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 30,
                                  child: CircleAvatar(
                                    radius: 18.r,
                                    backgroundImage: const NetworkImage(
                                      'https://as1.ftcdn.net/v2/jpg/03/38/30/80/1000_F_338308078_iiXC8b9lxpxmjGKaKu4dtXHSIVfzE8qm.jpg',
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 60,
                                  child: CircleAvatar(
                                    radius: 18.r,
                                    backgroundImage: const NetworkImage(
                                      'https://marketplace.canva.com/EAFXVprh3Mk/2/0/1600w/canva-gray-and-orange-simple-linkedin-profile-picture-Fe4W5qr-zVQ.jpg',
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 90,
                                  child: CircleAvatar(
                                    radius: 18.r,
                                    backgroundImage: const NetworkImage(
                                      'https://t4.ftcdn.net/jpg/02/88/71/39/360_F_288713990_9djqg55yU849TpUBYgSsvYvJ7lUEirJh.webp',
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  child: CircleAvatar(
                                    backgroundColor: primaryColor,
                                    radius: 18.r,
                                    child: Text(
                                      '+45',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // SizedBox(height: 10.h),

                  // About Section
                  Text(
                    'About',
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: primaryColor,
                      fontFamily: 'CustomFont2',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "Building trusted relationships is what we are all about. Your BNI Membership is designed to develop long lasting relationships that deepen and evolve through our core value - Givers Gain. Each member of your referral network contributes to your success and you to theirs. Now more than ever, building trusted relationships is critical to business success.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  //  SizedBox(height: 5.h),
                  Text(
                    "Participate in BNI's Global Convention 2024 in Hawaii to embrace the impact of meaningful connections and continuous learning, propelling your business toward growth. Adapt to evolving technologies and markets, seize new opportunities, and join the celebration as we count down to BNI's 40th Anniversary!",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black54,
                    ),
                  ),
                  Divider(
                    color: Colors.black54.withOpacity(0.1),
                    thickness: 1,
                  ),
                  Text(
                    'About Your Query',
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: primaryColor,
                      fontFamily: 'CustomFont2',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'Communicate with Chapter participants to ask questions or share information.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.black54.withOpacity(0.1),
                                width: 1))),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 8.w, top: 8.w),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 18.r,
                            backgroundImage:
                                const AssetImage("assets/images/profile6.jpg"),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            'Ask Question',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: iconColor,
                              fontFamily: 'CustomFont2',
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  // // SizedBox(
                  //   height: 3.h,
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total Price',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black54,
                    fontFamily: 'CustomFont2',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '₹1000/Person',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: iconColor,
                    fontFamily: 'CustomFont2',
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // Handle booking action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: iconColor,
              ),
              child: Text(
                'Book Chapter',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white,
                  fontFamily: 'CustomFont2',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
