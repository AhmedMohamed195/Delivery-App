// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:deliveryapp/data/dummy_data.dart';
import 'package:deliveryapp/widget/custom-button.dart';
import 'package:deliveryapp/widget/custom-details-products.dart';
import 'package:flutter/material.dart';

class DetaislOne extends StatefulWidget {
  const DetaislOne({super.key});

  @override
  State<DetaislOne> createState() => _DetaislOneState();
}

class _DetaislOneState extends State<DetaislOne> {
  bool isFavorite = true;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            // product photo :-
            Image.asset(
              'lib/images/pablo-merchan-montes-dc_JMu8lb5U-unsplash.png',
              height: screenHeight * 0.58,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            // White background
            Positioned(
              top: screenHeight * 0.37,
              left: screenWidth * -0.02,
              right: screenWidth * -0.03,
              child: Image.asset(
                'lib/images/Union 1.png',
                fit: BoxFit.cover,
              ),
            ),

            //   Icon Return :-
            Positioned(
                top: screenHeight * 0.042,
                left: screenWidth * 0.05,
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white))),

            // Title product :-
            Positioned(
              top: screenHeight * 0.057,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'Hamburguesa especial',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // Favorite Icon
            Positioned(
              top: screenHeight * 0.42,
              right: screenWidth * 0.08,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(screenWidth * 0.03),
                  decoration: BoxDecoration(
                    color: isFavorite ? Colors.red : Colors.grey[400],
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white,
                    size: screenWidth * 0.063,
                  ),
                ),
              ),
            ),
            // Title of Textes :-
            Positioned(
              top: screenHeight * 0.52,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Descripción',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth * 0.046,
                          color: Color(0xff153E73)),
                    ),
                    SizedBox(height: screenHeight * 0.006),
                    Text(
                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: screenWidth * 0.035,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.018),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Ingredientes',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth * 0.046,
                                color: Color(0xff153E73))),
                        Text('10 ingredientes',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: screenWidth * 0.036,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Categories :-
            Positioned(
              top: screenHeight * 0.69,
              left: 0,
              right: 0,
              child: SizedBox(
                height: screenHeight * 0.26,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoriesDetails.length,
                    itemBuilder: (context, i) {
                      return CustomDetailsProducts(
                          imagePath: categoriesDetails[i].imagePath,
                          text: categoriesDetails[i].text);
                    }),
              ),
            ),
            // Two item Button & Text :-
            Positioned(
                top: screenHeight * 0.90,
                left: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.all(screenWidth * 0.02),
                  child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.04),
                          child: CustomButton(
                              width: screenWidth * 0.5,
                              height: screenHeight * 0.060,
                              text: "ordenar ahora",
                              onPressed: () {})),
                      Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.025),
                        child: Text(
                          "\$${12.58}",
                          style: TextStyle(
                              fontSize: screenWidth * 0.067,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff153E73)),
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
