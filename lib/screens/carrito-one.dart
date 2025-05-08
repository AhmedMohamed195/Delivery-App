import 'package:deliveryapp/data/dummy_data.dart';
import 'package:deliveryapp/helper/getresponsivefontsize.dart';
import 'package:deliveryapp/widget/custom-address-option.dart';
import 'package:deliveryapp/widget/custom-bottom-navigationbar.dart';
import 'package:deliveryapp/widget/custom-button.dart';
import 'package:deliveryapp/widget/custom-categories-four.dart';
import 'package:deliveryapp/widget/custom-paymentInfo.dart';
import 'package:flutter/material.dart';

class CarritoOnePage extends StatefulWidget {
  const CarritoOnePage({super.key});

  @override
  State<CarritoOnePage> createState() => _CarritoOnePageState();
}

class _CarritoOnePageState extends State<CarritoOnePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text(
          "Carrito",
          style: TextStyle(
            color: Color(0xff5117AC),
            fontSize: getResponsiveFontSize(fontSize: 28),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight * 0.01),
          child: Container(
            height: screenHeight * 0.015,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.05),
                  blurRadius: 10,
                  offset: Offset(0, 1),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });

          if (index == 0) {
            Navigator.of(
              context,
            ).pushNamedAndRemoveUntil("homepage", (route) => false);
          } else if (index == 2) {
            Navigator.of(
              context,
            ).pushNamedAndRemoveUntil("carritoonepage", (route) => false);
          } else if (index == 3) {}
        },
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // CustomAddressOption :-
                    CustomAddressOption(
                      text1: 'Mi casa',
                      text2: 'Direción de ejemplo',
                      backgroundcolor: Color(0xff5117AC),
                      colortext1: Colors.white,
                      colortext2: Colors.white,
                      coloricon: Colors.white,
                      colorborder: Colors.grey,
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    // CustomAddressOption :-
                    CustomAddressOption(
                      text1: 'Mi Trabajo',
                      text2: 'Direción de ejemplo',
                      backgroundcolor: Colors.white,
                      colortext1: Colors.black,
                      colortext2: Colors.grey,
                      coloricon: Color(0xff5117AC),
                      colorborder: Colors.grey,
                    ),

                    Container(
                      width: screenWidth * 0.16,
                      height: screenHeight * 0.06,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff5117AC),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: screenWidth * 0.07,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: screenHeight * 0.03),

              SizedBox(
                height: screenHeight * 0.35,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoriesCarrite.length,
                  itemBuilder: (context, i) {
                    return CustomCategoriesFour(
                      imagePath: categoriesCarrite[i].imagePath,
                      text1: categoriesCarrite[i].text1,
                      text2: categoriesCarrite[i].text2,
                    );
                  },
                ),
              ),

              SizedBox(height: screenHeight * 0.035),
              // Payment Info
              CustomPaymentInfo(),
              SizedBox(height: screenHeight * 0.030),
              // Button :-
              CustomButton(
                width: screenWidth * 0.9,
                height: screenHeight * 0.064,
                text: "Realizar compra",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),

      // Custom Bottom Nav
    );
  }
}
