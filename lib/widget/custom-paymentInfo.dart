import 'package:deliveryapp/helper/getresponsivefontsize.dart';
import 'package:flutter/material.dart';

class CustomPaymentInfo extends StatelessWidget {
  const CustomPaymentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(screenWidth * 0.04),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(screenWidth * 0.05),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "SubTotal:",
                style: TextStyle(
                  fontSize: getResponsiveFontSize(fontSize: 13),
                  color: Color(0xff153E73),
                ),
              ),
              Text(
                "\$85.00 usd",
                style: TextStyle(
                  fontSize: getResponsiveFontSize(fontSize: 13),
                  color: Color(0xff153E73),
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Envío:",
                style: TextStyle(
                  fontSize: getResponsiveFontSize(fontSize: 13),
                  color: Color(0xff153E73),
                ),
              ),
              Text(
                "Gratis",
                style: TextStyle(
                  fontSize: getResponsiveFontSize(fontSize: 13),
                  color: Color(0xff153E73),
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total:",
                style: TextStyle(
                  fontSize: getResponsiveFontSize(fontSize: 14),
                  fontWeight: FontWeight.bold,
                  color: Color(0xff5117Ac),
                ),
              ),
              Text(
                "\$85.00 usd",
                style: TextStyle(
                  fontSize: getResponsiveFontSize(fontSize: 14),
                  fontWeight: FontWeight.bold,
                  color: Color(0xff5117Ac),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
