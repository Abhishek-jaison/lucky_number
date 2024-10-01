import 'dart:math';

import 'package:flutter/material.dart';
import 'package:number_picker/constants/assests.dart';
import 'package:number_picker/widgets/custom_elevated_button.dart';
import 'package:share_plus/share_plus.dart';

class ResultScreen extends StatelessWidget {
  final String userName;

  // Constructor to receive the userName
  const ResultScreen({Key? key, required this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Generate a random number between 1 and 100
    int randomNumber = Random().nextInt(100) + 1;

    return SafeArea(
      child: Scaffold(
          body: Stack(children: [
        // Background Image
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  AppAssests.background2), // Your background image path
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(height: 20,),
                    Text(
                        '$userName , Your lucky number is:',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 100,),
                    Text(
                      '$randomNumber',
                      style: const TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                CustomElevatedButton(
                    bgColor: Colors.deepPurple,
                    textColor: Colors.white,
                    buttonText: 'Share my Lucky Number',
                    onPressed:(){ Share.share('$userName, lucky number is :$randomNumber');}),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}
