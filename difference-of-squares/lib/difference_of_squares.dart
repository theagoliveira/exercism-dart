import 'dart:math';

class DifferenceOfSquares {
  int squareOfSum(int n) => pow(n * (1 + n) ~/ 2, 2) as int;

  int sumOfSquares(int n) => n * (n + 1) * (2 * n + 1) ~/ 6;

  int differenceOfSquares(int n) => squareOfSum(n) - sumOfSquares(n);
}
