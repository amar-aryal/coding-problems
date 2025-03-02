import 'dart:collection';

void main() {
  const List<int> nums = [2, 7, 11, 15];
  const int target = 9;

  getComplementaryIndices(nums, target);
  getNumbersByBruteForce(nums, target);
}

List<int> getComplementaryIndices(List<int> nums, int target) {
  HashMap numbersTracked = HashMap();
  List<int> result = [];
  for (int n in nums) {
    // keeping track of each element iterated over
    numbersTracked[n] = nums.indexOf(n);

    // check if the complementary number is available in the hashmap
    bool hasComplementaryNum = (numbersTracked.containsKey(target - n));
    if (hasComplementaryNum) {
      /// if hasmap contains the complementary number, then the index of the current number n
      /// and complementary number are added in a list and printed
      result.addAll([numbersTracked[n], numbersTracked[target - n]]);
      print(result);
    }
  }
  return result;
}

List<int> getNumbersByBruteForce(List<int> nums, int target) {
  List<int> result = [];
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] == target) {
        print([i, j]);
        result.addAll([i, j]);
      }
    }
  }
  return result;
}
