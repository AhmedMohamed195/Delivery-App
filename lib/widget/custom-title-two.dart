// ignore_for_file: prefer_const_constructors

import 'package:deliveryapp/helper/getresponsivefontsize.dart';
import 'package:flutter/material.dart';

class CustomTitleTwo extends StatelessWidget {
  final String text;
  const CustomTitleTwo({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start, //
      children: [
        Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.04),
          child: Text(
            text,
            style: TextStyle(
                fontSize: getResponsiveFontSize(fontSize: 17.5), color: Color(0xff153E73)),
          ),
        ),
      ],
    );
  }
}
