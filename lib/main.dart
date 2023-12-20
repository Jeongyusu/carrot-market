import 'package:carrot_market_01/screens/main_screen.dart';
import 'package:carrot_market_01/thema.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CarrotMarketUI());
}

class CarrotMarketUI extends StatelessWidget {
  const CarrotMarketUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'carrot_market_ui',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      theme: theme(),
    );
  }
}