import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Color bgColor; // Background color of the button
  final Color textColor; // Text color
  final String buttonText; // Text inside the button
  final VoidCallback onPressed; // Function to execute on button press

  // Constructor to initialize the values
  const CustomElevatedButton({
    Key? key,
    required this.bgColor,
    required this.textColor,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: textColor, backgroundColor: bgColor, // Text color
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 15.0,
        ), // Padding inside the button
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(15), // Rounded corners for the button
        ),
      ),
      onPressed: onPressed, // onPressed function
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 12, // Font size of the text
        ),
      ),
    );
  }
}
