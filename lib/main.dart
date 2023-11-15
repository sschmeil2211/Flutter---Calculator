import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:calculator/view_models/providers/calculator_provider.dart';
import 'package:calculator/views/screens/calculator_screen/calculator_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: const CalculatorScreen(),
      ),
    );
  }
}