import 'package:deliveryapp/helper/getresponsivefontsize.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class CustomAddressOption extends StatelessWidget {
  final Color backgroundcolor;
  final Color colortext1;
  final Color colortext2;
  final Color coloricon;
  final Color colorborder;
  final String text1;
  final String text2;
  const CustomAddressOption({
    super.key,
    required this.text1,
    required this.text2,
    required this.backgroundcolor,
    required this.colortext1,
    required this.colortext2,
    required this.coloricon,
    required this.colorborder,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(screenWidth * 0.03),
        color: backgroundcolor,
        border: Border.all(color: colorborder, width: 1),
        boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(0, 1))],
      ),
      width: screenWidth * 0.37,
      height: screenHeight * 0.07,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.02),
            child: Icon(
              Ionicons.md_home_outline,
              color: coloricon,
              size: screenWidth * 0.056,
            ),
          ),
          SizedBox(width: screenWidth * 0.013),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text1,
                style: TextStyle(
                  color: colortext1,
                  fontSize: getResponsiveFontSize(fontSize: 11.2),
                ),
              ),
              Text(
                text2,
                style: TextStyle(
                  color: colortext2,
                  fontSize: getResponsiveFontSize(fontSize: 11.2),
                ),
              ),
            ],
          ),
          SizedBox(width: screenWidth * 0.01),
        ],
      ),
    );
  }
}
