import 'package:deliveryapp/helper/getresponsivefontsize.dart';
import 'package:deliveryapp/widget/custom-button.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenWidth = size.width;
    final screenHeight = size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
          left: screenWidth * 0.13,
          top: screenHeight * 0.15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset(
              'lib/images/letter-d.png',
              width: screenWidth * 0.5,
              height: screenHeight * 0.25,
              fit: BoxFit.contain,
            ),

            Text(
              'RESTAURANT APP',
              style: TextStyle(fontSize: getResponsiveFontSize(fontSize: 18)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: screenHeight * 0.05),
            Text(
              'Explore and order your favorite food',
              style: TextStyle(
                fontSize: getResponsiveFontSize(fontSize: 16),
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: screenHeight * 0.044),
            CustomButton(
              width: screenWidth * 0.77,
              height: screenHeight * 0.07,
              text: "Go",
              onPressed: () {
                Navigator.of(
                  context,
                ).pushNamedAndRemoveUntil("homepage", (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
