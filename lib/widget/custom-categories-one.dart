// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomCategoriesOne extends StatelessWidget {
  final Color color;
  final String imagePath;
  final String text;
  const CustomCategoriesOne(
      {super.key,
      required this.color,
      required this.imagePath,
      required this.text});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(screenWidth * 0.005),
      margin: EdgeInsets.all(screenWidth * 0.01),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenWidth * 0.038),
              color: color,
            ),
            height: screenHeight * 0.072,
            child: Image.asset(imagePath),
          ),
          SizedBox(
            height: screenHeight * 0.008,
          ),
          Text(
            text,
            style: TextStyle(fontSize: screenWidth * 0.038),
          )
        ],
      ),
    );
  }
}
