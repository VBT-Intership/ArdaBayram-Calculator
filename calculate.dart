import 'ICalculate.dart';

class CalculateSum extends ICalculate {
  @override
  double fetch(double number1, double number2) => number1 + number2;
}

class CalculateDivision extends ICalculate {
  @override
  double fetch(double number1, double number2) => number1 / number2;
}

class CalculateSubtraction extends ICalculate {
  @override
  double fetch(double number1, double number2) => number1 - number2;
}

class CalculateMultiplication extends ICalculate {
  @override
  double fetch(double number1, double number2) => number1 * number2;
}
