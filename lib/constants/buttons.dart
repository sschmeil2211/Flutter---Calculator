import 'package:flutter/material.dart';

import 'package:calculator/constants/colors.dart';
import 'package:calculator/views/widgets/calculator_widget/calculator_widgets.dart';

List<Widget> buttonList = [
  const CalculatorButton(
    label: "C",
    textColor: AppColors.secondaryColor,
  ),
  const CalculatorButton(
    label: "/",
    textColor: AppColors.secondaryColor,
  ),
  const CalculatorButton(
    label: "X",
    textColor: AppColors.secondaryColor,
  ),
  const CalculatorButton(
    label: "AC",
    textColor: AppColors.secondaryColor,
  ),
  const CalculatorButton(label: "7"),
  const CalculatorButton(label: "8"),
  const CalculatorButton(label: "9"),
  const CalculatorButton(
    label: "+",
    textColor: AppColors.secondaryColor,
  ),
  const CalculatorButton(label: "4"),
  const CalculatorButton(label: "5"),
  const CalculatorButton(label: "6"),
  const CalculatorButton(
    label: "-",
    textColor: AppColors.secondaryColor,
  ),
  const CalculatorButton(label: "1"),
  const CalculatorButton(label: "2"),
  const CalculatorButton(label: "3"),
  const CalculatorButton(label: "%"),
  const CalculatorButton(label: "0"),
  const CalculatorButton(label: "."),
];