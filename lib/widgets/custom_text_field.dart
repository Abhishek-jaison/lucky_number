import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller; // Controller to handle the input text
  final String hintText;                   // Customizable hint text for the TextField

  // Constructor to initialize the controller and hint text
  const CustomTextField({
    Key? key,
    required this.controller, // Required input: TextEditingController
    required this.hintText,   // Required input: hint text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller, // Connect the TextEditingController to the TextField
      decoration: InputDecoration(
        hintText: hintText,   // Display the hint text inside the TextField
        hintStyle: TextStyle(
          color: Colors.white.withOpacity(0.6), // Customize the hint text color
        ),
        filled: true,
        fillColor: Colors.transparent, // Set background to transparent
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10), // Rounded corners for the border
        ),
      ),
      style: TextStyle(color: Colors.white), // Set the text color to white
    );
  }
}