import 'package:algorithms_data_structures/data_structures/stack/stack.dart';

class StackChallenge {
  ///Challenge 1: Reverse a List
  ///Create a function that prints the contents of a list in reverse order.
  static void printInReverse<E>(List<E> list) {
    final stack = StackStructure<E>();
    for (E value in list) {
      stack.push(value);
    }
    while (stack.isNotEmpty) {
      print(stack.pop());
    }
  }

  ///Challenge 2: Balance the Parentheses
  ///Check for balanced parentheses. Given a string,
  ///check if there are ( and ) characters, and return true if the parentheses in the string are balanced.
  static bool checkParentheses(String text) {
    final stack = StackStructure<int>();
    final open = '('.codeUnitAt(0);
    final close = ')'.codeUnitAt(0);

    for (int codeUnit in text.codeUnits) {
      if (codeUnit == open) {
        stack.push(codeUnit);
      } else if (codeUnit == close) {
        if (stack.isEmpty) {
          return false;
        } else {
          stack.pop();
        }
      }
    }
    return stack.isEmpty;
  }
}
