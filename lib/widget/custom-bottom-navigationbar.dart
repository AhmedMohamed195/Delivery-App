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
      padding: EdgeInsets.all(10),
      child: Container(
        height: screenHeight * 0.08,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 30)],
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

              GestureDetector(
                onTap: () => onTap(2),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Shape border of midel icon :-
                    Positioned(
                      top: -10,
                      left: -10,
                      child: Container(
                        width: 300,
                        height: 500,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [BoxShadow(color: Colors.grey)],
                        ),
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: CircleAvatar(
                        radius: screenWidth * 0.075,
                        backgroundImage: AssetImage('lib/images/Ellipse 9.png'),
                      ),
                    ),
                    // Shape basket :-
                    Positioned(
                      top: 10,
                      left: 7,
                      right: 7,
                      bottom: 10,
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          'lib/images/noun_basket_821481.png',
                          width: screenWidth * 0.08,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Heart icon
              IconButton(
                onPressed: () => onTap(3),
                icon: Icon(
                  Icons.favorite_outline_rounded,
                  size: iconSize,
                  color:  Colors.grey 
                ),
              ),

              // Last image (no shadow)
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
    );
  }
}
