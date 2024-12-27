import 'package:ecommerce_app/models/cart.dart';
import 'package:ecommerce_app/pages/about_page.dart';
import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/home_page.dart';
import 'package:ecommerce_app/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        routes: {
        '/HomePage': (context) =>const  HomePage(),
        '/IntroPage': (context) => const IntroPage(),
        '/AboutPage': (context) => const AboutPage(),
        '/CartPage': (context) => const MyCart(),
      }
      ),
    );

  }
}