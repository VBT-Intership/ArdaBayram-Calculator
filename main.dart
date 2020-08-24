import 'dart:io';
import 'ICalculate.dart';
import 'calculate.dart';

main() {
  ICalculate calc;

  while (true) {
    print("Press + for addition");
    print("Press - for subtraction");
    print("Press * for multiplication");
    print("Press / for division");
    print("Press E for exit");
    stdout.write("\nSelect operation : ");
    String op = stdin.readLineSync();

    if (op.toLowerCase() == 'e') {
      print("Bye, Bye :D");
      exit(0);
    }

    if (op != '+' && op != '-' && op != '*' && op != '/') {
      print("\nWrong selection!\n");
      continue;
    }

    stdout.write("Number 1 : ");
    String number1 = stdin.readLineSync();

    if (!isNumeric(number1)) {
      print("The input ${number1} is not a number!");
      continue;
    }

    stdout.write("Number 2 : ");
    String number2 = stdin.readLineSync();

    if (!isNumeric(number2)) {
      print("The input ${number2} is not a number!");
      continue;
    }

    switch (op) {
      case '+':
        calc = CalculateSum();
        print(
            "Result = ${calc.fetch(double.parse(number1), double.parse(number2))}");
        break;
      case '-':
        calc = CalculateSubtraction();
        print(
            "Result = ${calc.fetch(double.parse(number1), double.parse(number2))}");
        break;
      case '*':
        calc = CalculateMultiplication();
        print(
            "Result = ${calc.fetch(double.parse(number1), double.parse(number2))}");
        break;
      case '/':
        if (number2 == '0') {
          print("\nDivisor can not be 0!\n");
          continue;
        }
        calc = CalculateDivision();
        print(
            "Result = ${calc.fetch(double.parse(number1), double.parse(number2))}");
        break;
      default:
    }
    print("");
  }
}

bool isNumeric(String s) {
  if (s == null) {
    return false;
  }
  return double.parse(s, (e) => null) != null;
}
