import 'package:dart_application_1/dart_application_1.dart';
import 'package:dart_application_1/reverse_string.dart';
import 'package:test/test.dart';

void main() {
  test('getComplementaryIndices', () {
    expect(getComplementaryIndices([2, 7, 11, 15], 9), [1, 0]);
  });

  test('getNumbersByBruteForce', () {
    expect(getNumbersByBruteForce([2, 7, 11, 15], 9), [0, 1]);
  });

  test('reverseString',
      () => expect(reverseString1('Hello World'), "dlroW olleH"));
}
