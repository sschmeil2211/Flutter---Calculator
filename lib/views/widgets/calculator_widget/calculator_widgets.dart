import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:calculator/view_models/providers/calculator_provider.dart';
import 'package:calculator/constants/constants.dart';

class BodyCalculator extends StatelessWidget {
  const BodyCalculator({super.key});

  Widget buttonsRow({int listIndex = 4, int buttonIndex = 0}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(listIndex, (index) => buttonList[index + buttonIndex]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buttonsRow(),
        buttonsRow(buttonIndex: 4),
        buttonsRow(buttonIndex: 8),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  buttonsRow(listIndex: 3, buttonIndex: 12),
                  const SizedBox(height: 20),
                  buttonsRow(listIndex: 3, buttonIndex: 15),
                ],
              ),
            ),
            const SizedBox(width: 20),
            const CalculateButton()
          ],
        )
      ],
    );
  }
}


class CustomTextField extends StatelessWidget {

  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
          border: InputBorder.none,
          fillColor: AppColors.primaryColor,
          filled: true
        ),
        style: const TextStyle(fontSize: 50),
        readOnly: true,
        autofocus: true,
        showCursor: true,
      ),
    );
  }
}

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Provider.of<CalculatorProvider>(context, listen: false).setValue("="),
      child: Container(
        height: 160,
        width: 70,
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(40)
        ),
        child: const Center(
          child: Text(
            "=",
            style: TextStyle(fontSize: 32)
          ),
        ),
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {

  final String label;
  final Color textColor;

  const CalculatorButton({
    super.key,
    required this.label,
    this.textColor = Colors.white
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Provider.of<CalculatorProvider>(context, listen: false).setValue(label),
      child: Material(
        elevation: 3,
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(
          radius: 36,
          backgroundColor: AppColors.secondary2Color,
          child: Text(
            label,
            style: TextStyle(
              color: textColor,
              fontSize: 32,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
    );
  }
}