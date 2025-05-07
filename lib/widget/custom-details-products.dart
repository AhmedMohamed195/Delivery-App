import 'package:flutter/material.dart';

class CustomDetailsProducts extends StatelessWidget {
  final String imagePath;
  final String text;
  const CustomDetailsProducts(
      {super.key, required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: screenHeight * 0.16,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.079),
          child: Text(
            text,
            style: TextStyle(
              fontSize: screenWidth * 0.033,
            ),
          ),
        ),
      ],
    );
  }
}
