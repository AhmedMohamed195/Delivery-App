import 'package:deliveryapp/helper/getresponsivefontsize.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final VoidCallback onPressed;
  const CustomButton({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          colors: [Color(0xff462898), Color(0xff30BBBD)],
        ),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: getResponsiveFontSize(fontSize: 17),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
