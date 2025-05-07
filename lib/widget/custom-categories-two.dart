// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CustomCategoriesTwo extends StatefulWidget {
  final String imagePath;
  final String text1;
  final String text2;
  final String text3;
  const CustomCategoriesTwo({
    super.key,
    required this.imagePath,
    required this.text1,
    required this.text2,
    required this.text3,
  });

  @override
  State<CustomCategoriesTwo> createState() => _CustomCategoriesTwoState();
}

class _CustomCategoriesTwoState extends State<CustomCategoriesTwo> {
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
            height: screenHeight * 0.45,
            width: screenWidth * 0.52,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.04,
                bottom: screenHeight * 0.004,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.07),
                    child: GestureDetector(
                      onTap:
                          () =>
                              Navigator.of(context).pushNamed("detailsonepage"),
                      child: Image.asset(
                        widget.imagePath,
                        width: screenWidth * 0.30,
                        height: screenHeight * 0.19,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    widget.text1,
                    style: TextStyle(
                      fontSize: screenWidth * 0.042,
                      color: Color(0xff515f65),
                    ),
                  ),
                  Text(
                    widget.text2,
                    style: TextStyle(
                      fontSize: screenWidth * 0.028,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff515f65),
                    ),
                  ),
                  Text(
                    widget.text3,
                    style: TextStyle(
                      fontSize: screenWidth * 0.050,
                      color: Color(0xff153E73),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Arrow icon
          Positioned(
            top: screenHeight * 0.22,
            right: screenWidth * 0.03,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x33BDBDBD),
                    blurRadius: 4 * screenWidth / 375,
                    offset: Offset(0, 2 * screenHeight / 812),
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
