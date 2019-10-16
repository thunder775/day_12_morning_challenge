// Challenge 1
//Create a function that takes an list of positive and negative numbers.
// Return a list where the first element is the count of positive numbers and the second element is the sum of negative numbers.
// Examples
// countPosSumNeg([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]) ➞ [10, -65]
/// There are a total of 10 positive numbers.
/// The sum of all negative numbers equals -65.
List countPosSumNeg(List<int> list) {
  int count = 0;
  int sum = 0;
  for (int x in list) {
    if (x > 0) {
      count++;
    } else if (x < 0) {
      sum += x;
    }
  }
  List result = [];
  result.add(count);
  result.add(sum);
  return result;
}

// Challenge 2
// The digit distance between two numbers is the absolute value of the difference of each digit.
//  To illustrate:
//
// digitDistance(234, 489) ➞ 12
// Since |2 - 4| + |3 - 8| + |4 - 9| = 2 + 5 + 5
/// Create a function that returns the digit distance between two integers.
int digitDistance(int x, int y) {
  int sum = 0;
  int rem1 = 0;
  int rem2 = 0;
  while (x != 0 && y != 0) {
    rem1 = x % 10;
    rem2 = y % 10;
    sum = sum + ((rem1 - rem2).abs());
    x = x ~/ 10;
    y = y ~/ 10;
  }
  return sum;
}

// Challenge 3
// Write test cases to test previous functions
main() {
  print(countPosSumNeg([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]));
  print(digitDistance(234, 489));
}
