// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:deliveryapp/cubit/carrito_card_cubit/carrito_card_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class CustomCategoriesFour extends StatefulWidget {
  final String imagePath;
  final String text1;
  final String text2;
 
  const CustomCategoriesFour({
    super.key,
    required this.imagePath,
    required this.text1,
    required this.text2,
  });

  @override
  State<CustomCategoriesFour> createState() => _CustomCategoriesFourState();
}

class _CustomCategoriesFourState extends State<CustomCategoriesFour> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return BlocProvider(
      create: (context) => CarritoCardCubit(quantity: 1, price: 20),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.02,
          vertical: screenHeight * 0.01,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: screenHeight * 0.33,
              width: screenWidth * 0.55,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: screenWidth * 0.04,
                  bottom: screenHeight * 0.0001,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.1),
                      child: Image.asset(
                        widget.imagePath,
                        width: screenWidth * 0.25,
                        height: screenHeight * 0.16,

                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(
                      widget.text1,
                      style: TextStyle(
                        fontSize: screenWidth * 0.047,
                        color: Color(0xff153E73),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.005),
                    Text(
                      widget.text2,
                      style: TextStyle(
                        fontSize: screenWidth * 0.029,

                        color: Color(0xff66667E),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.015),

                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.032),
                      child: BlocBuilder<CarritoCardCubit, CarritoCardState>(
                        builder: (context, state) {
                          if (state is CarritoCardInitial) {
                            return Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: screenWidth * 0.07,
                                      height: screenWidth * 0.07,
                                      decoration: BoxDecoration(
                                        color: Color(0xffF3F3F3),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: IconButton(
                                        onPressed: () {
                                          context
                                              .read<CarritoCardCubit>()
                                              .decreaseQuantity();
                                        },
                                        icon: Icon(
                                          Icons.remove,
                                          color: Color(0xff5117Ac),
                                          size: screenWidth * 0.065,
                                        ),
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
                                      ),
                                    ),
                                    SizedBox(width: screenWidth * 0.025),
                                    Text(
                                      '${state.quantity}',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.049,
                                      ),
                                    ),
                                    SizedBox(width: screenWidth * 0.029),
                                    Container(
                                      width: screenWidth * 0.065,
                                      height: screenWidth * 0.055,
                                      decoration: BoxDecoration(
                                        color: Color(0xff5117Ac),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: IconButton(
                                        onPressed: () {
                                          context
                                              .read<CarritoCardCubit>()
                                              .increaseQuantity();
                                        },
                                        icon: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: screenWidth * 0.050,
                                        ),
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: screenWidth * 0.08),
                                Text(
                                  "\$${state.price.toInt()}",
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.050,
                                    color: Color(0xff20D0C4),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            );
                          }
                          return Container();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Trash Icon :-
            Positioned(
              top: screenHeight * -0.010,
              right: screenWidth * -0.02,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(screenWidth * 0.025),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Ionicons.trash_outline,
                    color: Colors.white,
                    size: screenWidth * 0.055,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
