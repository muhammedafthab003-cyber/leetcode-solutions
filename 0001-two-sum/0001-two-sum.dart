class Solution {
  List<int> twoSum(List<int> nums, int target) {
  Map<int, int> map = {}; // Step 1: Create an empty map

  for (int i = 0; i < nums.length; i++) { // Step 2: Loop through list
    int current = nums[i];
    int needed = target - current;

    if (map.containsKey(needed)) { // Step 3: Check if pair is already in map
      return [map[needed]!, i];   // Step 4: If yes, return indices
    }

    map[current] = i; // Step 5: Save number with index
  }

  return []; // Should never happen (because question says one solution)
}

}