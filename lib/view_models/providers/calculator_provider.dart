import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier {
  final TextEditingController controller = TextEditingController();

  setValue(String value) {
    String text = controller.text;

    switch (value) {
      case "C":
        controller.clear();
        break;
      case "AC":
        controller.text = text.substring(0, text.length - 1);
        break;
      case "X":
        controller.text += "*";
        break;
      case "=":
        compute();
        break;
      default:
        controller.text += value;
    }
    controller.selection = TextSelection.fromPosition(
      TextPosition(offset: controller.text.length)
    );
  }

  void compute() {
    String text = controller.text;
    controller.text = text.interpret().toString();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}