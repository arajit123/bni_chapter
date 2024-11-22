import 'dart:io';

import 'package:bni_chapter/constants/colors.dart';
import 'package:bni_chapter/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'; // Import the image picker package

class CreateUser extends StatefulWidget {
  const CreateUser({super.key});

  @override
  State<CreateUser> createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _businessNameController = TextEditingController();
  final TextEditingController _dreamWorkController = TextEditingController();

  // Variable to hold the selected image
  XFile? _image;
  final ImagePicker _picker =
      ImagePicker();

  Future<void> _pickImage() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _image = pickedImage;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: signinButtonColor,
        centerTitle: true,
        title: Text(
          'Create User',
          style: appBartextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: _pickImage, // Pick an image on tap
                child: Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.3),
                    radius: 90.0,
                    child: _image == null
                        ? Icon(Icons.person,
                            size: 90, color: signinButtonColor.withOpacity(0.5))
                        : ClipOval(
                            child: Image.file(
                              File(_image!.path),
                              fit: BoxFit.fill,
                              width: 100,
                              height: 100,
                            ),
                          ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Name Field
              CustomTextField(
                hintText: "Name",
                leadingIcon: const Icon(Icons.person),
                controller: _nameController,
              ),
              const SizedBox(height: 20),

              // Email Field
              CustomTextField(
                hintText: "Email",
                leadingIcon: const Icon(Icons.email),
                controller: _emailController,
              ),
              const SizedBox(height: 20),

              // Phone Field
              CustomTextField(
                hintText: "Phone",
                leadingIcon: const Icon(Icons.phone),
                controller: _phoneController,
              ),
              const SizedBox(height: 20),

              // Business Name Field
              CustomTextField(
                hintText: "Business Name",
                leadingIcon: const Icon(Icons.business),
                controller: _businessNameController,
              ),
              const SizedBox(height: 20),

              // Dream Work Field
              CustomTextField(
                hintText: "Dream Work",
                leadingIcon: const Icon(Icons.work),
                controller: _dreamWorkController,
              ),
              const SizedBox(height: 30),
              // Submit Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle user creation logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: signinButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 130,
                      vertical: 12,
                    ),
                  ),
                  child: Text(
                    "Create User",
                    style: lWhiteTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Custom Text Field
class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final Icon? leadingIcon;
  final Icon? trailingIcon;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.isPassword = false,
    this.leadingIcon,
    this.trailingIcon,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        prefixIcon: leadingIcon,
        suffixIcon: trailingIcon,
        hintText: hintText,
        filled: true, // Enable fill
        fillColor: Colors.grey.shade100, // Light grey color
        border: InputBorder.none, // No border by default
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: blueTextColor, // Predefined color when focused
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey.shade300, // Light grey border when enabled
            width: 0.0,
          ),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      ),
    );
  }
}
