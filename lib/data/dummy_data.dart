import 'dart:ui';

import 'package:deliveryapp/models/category_carrito_modle.dart';
import 'package:deliveryapp/models/category_details_model.dart';
import 'package:deliveryapp/models/category_one_model.dart';
import 'package:deliveryapp/models/category_three_model.dart';
import 'package:deliveryapp/models/category_two_model.dart';

final List<CategoryOneModel> categoriesDataOne = [
  CategoryOneModel(
    color: Color(0xffD0E6A5),
    imagePath: 'lib/images/Group 159.png',
    text: 'Tacos',
  ),
  CategoryOneModel(
    color: Color(0xff86E3CE),
    imagePath: 'lib/images/Group 107.png',
    text: 'Frias',
  ),
  CategoryOneModel(
    color: Color(0xffFFDD95),
    imagePath: 'lib/images/Group 169.png',
    text: 'Burger',
  ),
  CategoryOneModel(
    color: Color(0xffFFACAC),
    imagePath: 'lib/images/Group 197.png',
    text: 'Pizza',
  ),
  CategoryOneModel(
    color: Color(0xffCCAAD9),
    imagePath: 'lib/images/Group 220.png',
    text: 'Burrites',
  ),
];
final List<CategoryTwoModel> categoriesDataTwo = [
  CategoryTwoModel(
    textone: "Pizza Clásica",
    texttwo: "Salsa clásica de la casa",
    textthree: '\$${12.5}',
    imagePath: "lib/images/Group 2514.png",
  ),
  CategoryTwoModel(
    textone: "Hamburguesa mix",
    texttwo: "Doble carne con queso",
    textthree: '\$${13.8}',
    imagePath: "lib/images/Group 2515.png",
  ),
  CategoryTwoModel(
    textone: "Pizza Clásica",
    texttwo: "Salsa clásica de la casa",
    textthree: '\$${12.5}',
    imagePath: "lib/images/Group 2514.png",
  ),
  CategoryTwoModel(
    textone: "Hamburguesa mix",
    texttwo: "Doble carne con queso",
    textthree: '\$${13.8}',
    imagePath: "lib/images/Group 2515.png",
  ),
];
final List<CategoryThreeModel> categoriesDataThree = [
  CategoryThreeModel(
    textone: "Naturals",
    texttwo: "Malteads tropicales",
    textthree: "Elaborado con jugos naturales",
    textfour: "\$${12.58}",
    imagePath: "lib/images/pngocean.com (19).png",
  ),
  CategoryThreeModel(
    textone: "Naturals",
    texttwo: "Malteads tropicales",
    textthree: "Salsa clásica de la casa",
    textfour: "\$${20.58}",
    imagePath: "lib/images/pngocean.com (18).png",
  ),
  CategoryThreeModel(
    textone: "Naturals",
    texttwo: "Malteads tropicales",
    textthree: "Elaborado con jugos naturales",
    textfour: "\$${12.58}",
    imagePath: "lib/images/pngocean.com (19).png",
  ),
];

final List<CategoryDetailsModel> categoriesDetails = [
  CategoryDetailsModel(
    imagePath:
        "lib/images/hamburguesas-caseras-de-carne-molida-receta-sin-grasa.png",
    text: "Arrachera",
  ),
  CategoryDetailsModel(
    imagePath: "lib/images/669B702D-C273-429D-8EB8-491B8D80F659.png",
    text: "Pan ajonjoli",
  ),
  CategoryDetailsModel(imagePath: "lib/images/lechuga_1.png", text: "Lechuga"),
  CategoryDetailsModel(
    imagePath: "lib/images/1140-red-onions-esp.png",
    text: "Cebolla",
  ),
];
final List<CategoryCarritoModle> categoriesCarrite = [
  CategoryCarritoModle(
    imagePath: "lib/images/burger2.png",
    text1: "Big Burger Queso",
    text2:
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, atque eaque eius esse et",
  ),
  CategoryCarritoModle(
    imagePath: "lib/images/burger3.png",
    text1: "Big Burger Queso",
    text2:
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, atque eaque eius esse et",
  ),
  CategoryCarritoModle(
    imagePath: "lib/images/burger2.png",
    text1: "Big Burger Queso",
    text2:
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, atque eaque eius esse et",
  ),
];
