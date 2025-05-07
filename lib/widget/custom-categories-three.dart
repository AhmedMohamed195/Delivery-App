// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomCategoriesThree extends StatefulWidget {
  final String imagePath;
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  const CustomCategoriesThree({
    super.key,
    required this.imagePath,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  });

  @override
  State<CustomCategoriesThree> createState() => _CustomCategoriesThreeState();
}

class _CustomCategoriesThreeState extends State<CustomCategoriesThree> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.04,
        vertical: screenHeight * 0.01,
      ),
      child: Stack(
        children: [
          Container(
            height: screenHeight * 0.186,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(screenWidth * 0.022),
                  child: Image.asset(
                    widget.imagePath,
                    width: screenWidth * 0.25,
                    height: screenHeight * 0.19,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.02,
                    horizontal: screenWidth * 0.01,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.text1,
                        style: TextStyle(
                          fontSize: screenWidth * 0.035,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.005),
                      Text(
                        widget.text2,
                        style: TextStyle(
                          fontSize: screenWidth * 0.043,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff153E73),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.003),
                      Text(
                        widget.text3,
                        style: TextStyle(
                          fontSize: screenWidth * 0.032,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.012),
                      Text(
                        widget.text4,
                        style: TextStyle(
                          fontSize: screenWidth * 0.045,
                          color: Color(0xff153E73),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Arrow icon
          Positioned(
            top: screenHeight * 0.11,
            right: screenWidth * 0.06,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              padding: EdgeInsets.all(screenWidth * 0.028),
              child: Icon(
                Icons.arrow_forward_ios,
                size: screenWidth * 0.04,
                color: Colors.grey.shade800,
              ),
            ),
          ),

          // Favorite Icon
          Positioned(
            top: screenHeight * 0.001,
            right: screenWidth * 0.01,
            child: IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : Colors.grey,
                size: screenWidth * 0.06,
              ),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
