// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:deliveryapp/helper/getresponsivefontsize.dart';
import 'package:flutter/material.dart';

class CustomTitleOne extends StatelessWidget {
  const CustomTitleOne({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Explorar categories",
            style: TextStyle(
              fontSize: getResponsiveFontSize(fontSize: 18),
              color: Color(0xff153E73),
            ),
          ),
          Text(
            "Ver todos",
            style: TextStyle(
              fontSize: getResponsiveFontSize(fontSize: 15),
              color: Color(0xffCFCFCF),
            ),
          ),
        ],
      ),
    );
  }
}
