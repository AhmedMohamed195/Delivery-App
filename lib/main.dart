import 'package:deliveryapp/screens/carrito-one.dart';
import 'package:deliveryapp/screens/detail-one.dart';
import 'package:deliveryapp/screens/home-page.dart';
import 'package:deliveryapp/screens/onboarding-page.dart';
import 'package:deliveryapp/screens/splash-page.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

final navigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(DevicePreview(enabled: false, builder: (context) => const MyApp()));
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
      navigatorKey: navigatorKey,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
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
