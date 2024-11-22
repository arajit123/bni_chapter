// import "package:bni_chapter/constants/colors.dart";
// import "package:flutter/material.dart";

// // // Method to build a Text Field
// //   Widget buildTextField(String hintText,
// //       {bool isPassword = false, Icon? leadingIcon, Icon? trailingIcon}) {
// //     return TextField(
// //       obscureText: isPassword,
// //       decoration: InputDecoration(
// //         prefixIcon: leadingIcon,
// //         suffixIcon: trailingIcon,
// //         hintText: hintText,
// //         border: OutlineInputBorder(
// //           borderRadius: BorderRadius.circular(10),
// //           borderSide: const BorderSide(color: Colors.grey),
// //         ),
// //         focusedBorder: OutlineInputBorder(
// //           borderRadius: BorderRadius.circular(10),
// //           borderSide: const BorderSide(color: Colors.blue),
// //         ),
// //         enabledBorder: OutlineInputBorder(
// //           borderRadius: BorderRadius.circular(10),
// //           borderSide: const BorderSide(color: Colors.grey),
// //         ),
// //       ),
// //     );
// //   }


// class CustomTextField extends StatelessWidget {
//   final String hintText;
//   final bool isPassword;
//   final Icon? leadingIcon;
//   final Icon? trailingIcon;

//   CustomTextField({
//     required this.hintText,
//     this.isPassword = false,
//     this.leadingIcon,
//     this.trailingIcon,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       obscureText: isPassword,
//       decoration: InputDecoration(
//         // Leading Icon
//         prefixIcon: leadingIcon,
//         // Trailing Icon
//         suffixIcon: trailingIcon,
//         // Placeholder text
//         hintText: hintText,
//         // Hide the border when not focused
//         border: InputBorder.none,
//         // Border when the field is focused
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//           borderSide: BorderSide(
//             color: signinButtonColor, // Use your predefined color
//             width: 2.0, // Adjust the width if needed
//           ),
//         ),
//         // Border when the field is enabled (not focused)
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//           borderSide: BorderSide(
//             color: Colors.transparent, // No border initially
//             width: 0.0,
//           ),
//         ),
//         // Border when the field is disabled
//         disabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//           borderSide: BorderSide(
//             color: Colors.transparent, // No border initially
//             width: 0.0,
//           ),
//         ),
//         // Padding inside the field
//         contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
//       ),
//     );
//   }
// }



// Custom Text Field
import 'package:bni_chapter/constants/colors.dart';
import 'package:flutter/material.dart';

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
            color: signinButtonColor, // Predefined color when focused
            width: 2.0,
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
