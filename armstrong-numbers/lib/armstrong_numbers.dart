import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int n) {
    List<String> digits = n.toString().split('');
    num num_digits = digits.length;

    return n ==
        digits.fold(0, (num t, e) => t + pow(int.parse(e), num_digits));
  }
}
