import 'dart:math';

// Challenge 1
// Create a function that returns the total number of steps it takes to transform each element to the maximal element in the list.
// Each step consists of incrementing a digit by one.
// Examples
// incrementToTop([3, 4, 5]) ➞ 3
// 3 increments: 3 -> 4, 4 -> 5; 4 -> 5
// incrementToTop([4, 3, 4]) ➞ 1
// incrementToTop([3, 3, 3]) ➞ 0
// incrementToTop([3, 10, 3]) ➞ 14
int incrementToTop(List<int> numbersList) {
  int count = 0;
  int max = numbersList.reduce((curr, next) => curr > next ? curr : next);

  for (int i = 0; i < numbersList.length; i++) {
    for (int e = numbersList[i]; e < max; e++) {
      count++;
    }
  }

  return count;
}
// Challenge 2
// In BlackJack, cards are counted with -1, 0, 1 values:
//
//  - 2, 3, 4, 5, 6 are counted as +1
//  - 7, 8, 9 are counted as 0
//  - 10, J, Q, K, A are counted as -1
//  Create a function that counts the number and returns it from the list of cards provided.
//  count([5, 9, 10, 3, "J", "A", 4, 8, 5]) ➞ 1
//
//  count(["A", "A", "K", "Q", "Q", "J"]) ➞ -6
//
//  count(["A", 5, 5, 2, 6, 2, 3, 8, 9, 7]) ➞ 5

// Challenge 3
// Write a test case each for previous two functions you wrote
int blackjackNumber(var x) {
  String y = x.toString();
  if (y == '2' || y == '3' || y == '4' || y == '5' || y == '6') {
    return 1;
  } else if (y == '7' || y == '8' || y == '9') {
    return 0;
  } else {
    return -1;
  }
}

int count(List x) {
  int count = 0;
  for (int i = 0; i < x.length; i++) {
    count = count + blackjackNumber(x[i]);
  }
  return count;
}

main() {
  print(incrementToTop([3, 10, 3]));
  print(count(["A", 5, 5, 2, 6, 2, 3, 8, 9, 7]));
}
