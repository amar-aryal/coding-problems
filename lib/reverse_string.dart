void main() {
  reverseString1('string');
  print("-------------------------------------------");
  reverseString2('string');
}

String reverseString1(String string) {
  final listOfLetters = <String>[];
  final reversedList = <String>[];
  String reversedString = "";

  print("Original string: $string");

  // splitting the string characters into a list of string characters
  for (int i = 0; i < string.length; i++) {
    listOfLetters.add(string[i]);
  }
  print(listOfLetters);

  // reversing the list of string characters
  for (int i = listOfLetters.length - 1; i >= 0; i--) {
    reversedList.add(listOfLetters[i]);
  }
  print(reversedList);

  // appending the characters of the reversed list into the empty string
  for (int i = 0; i < reversedList.length; i++) {
    reversedString += reversedList[i];
  }
  print("Reversed string: $reversedString");
  return reversedString;
}

String reverseString2(String string) {
  print("Original string: $string");
  final reversedString = string.split('').reversed.join();
  print("Reversed string: $reversedString");
  return reversedString;
}
