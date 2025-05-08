// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final Function(int) onTap;
  final int currentIndex;

  const CustomBottomNavBar({
    super.key,
    required this.onTap,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final iconSize = screenWidth * 0.07;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.025),
      child: Stack(
        children: [
          Container(
            height: screenHeight * 0.075,
            decoration: BoxDecoration(
              color: Color(0xffFEFEFE),
              borderRadius: BorderRadius.all(
                Radius.circular(screenWidth * 0.055),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: screenWidth * 0.075,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: screenWidth * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Home icon
                  IconButton(
                    onPressed: () => onTap(0),
                    icon: Icon(
                      Icons.home_outlined,
                      size: iconSize,
                      color: currentIndex == 0 ? Colors.blue : Colors.grey,
                    ),
                  ),

                  // Store icon
                  IconButton(
                    onPressed: () => onTap(1),
                    icon: Icon(
                      Icons.storefront_outlined,
                      size: iconSize,
                      color: currentIndex == 1 ? Colors.blue : Colors.grey,
                    ),
                  ),

                  // Shape border of midel icon :-
                  Container(
                    width: screenWidth * 0.25,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Icon(Icons.circle, color: Colors.grey),
                  ),
                  // Heart icon
                  IconButton(
                    onPressed: () => onTap(3),
                    icon: Icon(
                      Icons.favorite_outline_rounded,
                      size: iconSize,
                      color: Colors.grey,
                    ),
                  ),

                  // Last image :-
                  CircleAvatar(
                    radius: screenWidth * 0.035,
                    backgroundImage: AssetImage(
                      'lib/images/christopher-campbell-rDEOVtE7vOs-unsplash.png',
                    ),
                  ),
                ],
              ),
            ),
          ),

          //shape background midle icon :-
          Positioned(
            top: screenHeight * -0.02,
            right: screenWidth * 0.32,
            child: SizedBox(
              height: screenHeight * 0.11,
              width: screenWidth * 0.24,
              child: CircleAvatar(backgroundColor: Color(0xFFF5F5F5)),
            ),
          ),
          //Shape middle Icon :-
          Positioned(
            top: screenHeight * 0.007,
            right: screenWidth * 0.37,
            child: GestureDetector(
              onTap: () => onTap(2),
              child: SizedBox(
                height: screenHeight * 0.062,
                width: screenWidth * 0.14,
                child: Container(
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: CircleAvatar(
                    radius: screenWidth * 0.075,
                    backgroundImage: AssetImage('lib/images/Ellipse 9.png'),
                  ),
                ),
              ),
            ),
          ),

          // Shape basket :-
          Positioned(
            top: screenHeight * 0.014,
            right: screenWidth * 0.39,
            child: GestureDetector(
              onTap: () => onTap(2),
              child: Container(
                width: screenWidth * 0.1,
                padding: EdgeInsets.all(screenWidth * 0.015),
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset('lib/images/noun_basket_821481.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
