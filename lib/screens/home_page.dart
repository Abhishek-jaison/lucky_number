import 'dart:math';
import 'package:flutter/material.dart';
import 'package:number_picker/constants/assests.dart';
import 'package:number_picker/screens/result_page.dart';
import 'package:number_picker/widgets/custom_elevated_button.dart';
import 'package:number_picker/widgets/custom_text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController nameController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  // Navigate to another screen and pass the user's name
  void _navigateToResultScreen(BuildContext context) {
    String userName = nameController.text;

    if (userName.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(userName: userName),
        ),
      );
    } else {
      // Optionally show an error message if name is empty
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter your name!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Background Image
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssests.background1), // Your background image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Welcome to Lucky Number',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomTextField(
                      controller: nameController, // Attach the controller
                      hintText: 'Enter your name',
                    ),
                    CustomElevatedButton(
                      bgColor: Colors.deepPurple,
                      textColor: Colors.white,
                      buttonText: 'Wish me Luck',
                      onPressed: () {
                        _navigateToResultScreen(context); // Call navigation method
                      },
                    ),
                    Image.asset(AppAssests.dice, height: 130, width: 130),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}