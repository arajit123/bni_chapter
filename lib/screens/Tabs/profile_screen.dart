import 'dart:io';
import 'package:bni_chapter/constants/colors.dart';
import 'package:bni_chapter/screens/Tabs/add_user.dart';
import 'package:bni_chapter/utils/text_style.dart';
import 'package:bni_chapter/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController _businessNameController = TextEditingController();
  final TextEditingController _dreamWorkController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  XFile? _imageFile;
  final ImagePicker _picker = ImagePicker();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: backgroundColor,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: backgroundColor,
              ))
        ],
      ),
      body: SlidingUpPanel(
        parallaxEnabled: true,
        parallaxOffset: 0.5,
        backdropEnabled: true,
        backdropColor: Colors.black,
        panelSnapping: true,

        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.r),
          topRight: Radius.circular(25.r),
        ),
        minHeight: 470.h, // Minimum height when collapsed
        maxHeight: MediaQuery.of(context).size.height * 0.80, // Expanded height
        panel: _buildSlidingPanel(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 400.h,
              width: double.infinity,
              child: _buildHeaderWidget(),
            ),
          ],
        ), // Space for the image header
      ),
    );
  }

  Widget _buildSlidingPanel() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 50.w,
              height: 5.h,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          // const Gap(20),
          SizedBox(
            height: 15.h,
          ),
          Text("ARAJIT GARAI", style: lWhiteTextStyle),
          SizedBox(
            height: 8.h,
          ),
          Text(
            "111ARAJIT@GMAIL.COM",
            style: mWhiteTextStyle,
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                color: iconColor,
              ),
              Text(
                'Bangalore,India',
                style: mWhiteTextStyle,
              )
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          CustomTextField(
            hintText: "Business Name",
            controller: _businessNameController,
            leadingIcon: const Icon(Icons.business, color: iconColor),
          ),
          Gap(10.h),
          CustomTextField(
            hintText: "Dream Work",
            controller: _dreamWorkController,
            leadingIcon: const Icon(Icons.work, color: iconColor),
          ),
          Gap(10.h),
          CustomTextField(
            hintText: "Description",
            controller: _descriptionController,
            leadingIcon: const Icon(Icons.description, color: iconColor),
          ),
          Gap(10.h),
         CustomButton(text: "Submit", onPressed: (){})
        ],
      ),
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    setState(() {
      _isLoading = true;
    });

    try {
      final XFile? selectedImage = await _picker.pickImage(source: source);
      if (selectedImage != null) {
        setState(() {
          _imageFile = selectedImage;
        });
      }
    } catch (e) {
      print('Error picking image: $e');
    }

    setState(() {
      _isLoading = false;
    });
  }

  void _showImagePickerOptions(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          content: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    _pickImage(ImageSource.camera);
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.camera_enhance, color: iconColor),
                      SizedBox(width: 8),
                      Text(
                        'Take a photo',
                        style: TextStyle(fontFamily: 'CustomFont2'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    _pickImage(ImageSource.gallery);
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.photo_library, color: iconColor),
                      SizedBox(width: 8),
                      Text(
                        'Pick a photo',
                        style: TextStyle(fontFamily: 'CustomFont2'),
                      ),
                    ],
                  ),
                ),
                if (_imageFile != null) ...[
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        _imageFile = null;
                      });
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.delete, color: iconColor),
                        SizedBox(width: 8),
                        Text(
                          'Delete photo',
                          style: TextStyle(fontFamily: 'CustomFont2'),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildHeaderWidget() {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xFFD11D27),
                Colors.white,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            image: _imageFile != null
                ? DecorationImage(
                    image: FileImage(File(_imageFile!.path)),
                    fit: BoxFit.cover,
                  )
                : null,
          ),
        ),
        Positioned(
          top: 150,
          left: 100,
          right: 100,
          child: GestureDetector(
            onTap: () {
              _showImagePickerOptions(context);
            },
            child: Container(
              height: 35,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  _isLoading
                      ? const SizedBox(
                          height: 20.0,
                          width: 20.0,
                          child: CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.white),
                            strokeWidth: 3.0,
                          ),
                        )
                      : IconButton(
                          onPressed: () {
                            _showImagePickerOptions(context);
                          },
                          icon: const Icon(
                            Icons.camera_enhance,
                            color: iconColor,
                          ),
                        ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _showImagePickerOptions(context);
                      },
                      child: Text(
                        _imageFile == null ? "Add Photo" : "Change Photo",
                        style: sWhiteTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
