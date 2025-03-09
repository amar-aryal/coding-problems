import 'package:dart_application_1/reverse_string.dart';

void main() {
  // isPalindrome("1234");
  isPalindromeUsingLoop("racecar");
}

bool isPalindrome(String string) {
  // remove non-alphanumeric characters
  string = string.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();

  if (string == reverseString1(string)) {
    print(true);
    return true;
  }
  print(false);
  return false;
}

bool isPalindromeUsingLoop(String string) {
  int leftIndex = 0;
  int rightIndex = string.length - 1;

  while (leftIndex < rightIndex) {
    if (string[rightIndex] != string[leftIndex]) {
      print(false);
      return false;
    }
    leftIndex++;
    rightIndex--;
  }
  print(true);
  return true;
}
