import 'dart:io';

main() {
  double result;

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
    String x = stdin.readLineSync();

    if (!isNumeric(x)) {
      print("The input ${x} is not a number!");
      continue;
    }

    stdout.write("Number 2 : ");
    String y = stdin.readLineSync();

    if (!isNumeric(y)) {
      print("The input ${y} is not a number!");
      continue;
    }

    switch (op) {
      case '+':
        result = addition(x, y);
        break;
      case '-':
        result = subtraction(x, y);
        break;
      case '*':
        result = multiplication(x, y);
        break;
      case '/':
        if (y == '0') {
          print("\nDivisor can not be 0!\n");
          continue;
        }
        result = division(x, y);
        break;
      default:
    }
    print("Result = ${result}");
  }
}

double addition(String num1, String num2) {
  double result;
  result = double.parse(num1) + double.parse(num2);
  return result;
}

double subtraction(String num1, String num2) {
  double result;
  result = double.parse(num1) - double.parse(num2);
  return result;
}

double multiplication(String num1, String num2) {
  double result;
  result = double.parse(num1) * double.parse(num2);
  return result;
}

double division(String num1, String num2) {
  double result;
  result = double.parse(num1) / double.parse(num2);
  return result;
}

bool isNumeric(String s) {
  if (s == null) {
    return false;
  }
  return double.parse(s, (e) => null) != null;
}
