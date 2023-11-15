import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:calculator/view_models/providers/calculator_provider.dart';
import 'package:calculator/views/widgets/calculator_widget/calculator_widgets.dart';
import 'package:calculator/constants/constants.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.sizeOf(context).height;
    const padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    const decoration = BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.vertical(top: Radius.circular(30))
    );

    return Consumer<CalculatorProvider>(
      builder: (context, calculator, _) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Calculator App"),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            CustomTextField(controller: calculator.controller),
            const Spacer(),
            Container(
              height: screenHeight * 0.6,
              width: double.infinity,
              padding: padding,
              decoration: decoration,
              child: const BodyCalculator(),
            )
          ],
        ),
      )
    );
  }
}

