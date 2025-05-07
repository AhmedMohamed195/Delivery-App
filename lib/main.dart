// ignore_for_file: prefer_const_constructors

import 'package:deliveryapp/screens/carrito-one.dart';
import 'package:deliveryapp/screens/detail-one.dart';
import 'package:deliveryapp/screens/home-page.dart';
import 'package:deliveryapp/screens/onboarding-page.dart';
import 'package:deliveryapp/screens/splash-page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "homepage": (context) => HomePage(),
        "detailsonepage": (context) => DetaislOne(),
        "carritoonepage": (context) => CarritoOnePage(),
        "onboardingpage": (context) => OnboardingPage(),
      },
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
