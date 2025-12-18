class Solution {
  String longestPalindrome(String s) {
    if (s.isEmpty) return "";

    String longest = "";

    for (int i = 0; i < s.length; i++) {
      
      String odd = expandFromCenter(s, i, i);

      
      String even = expandFromCenter(s, i, i + 1);

      if (odd.length > longest.length) {
        longest = odd;
      }
      if (even.length > longest.length) {
        longest = even;
      }
    }

    return longest;
  }

  String expandFromCenter(String s, int left, int right) {
    while (left >= 0 &&
        right < s.length &&
        s[left] == s[right]) {
      left--;
      right++;
    }
    return s.substring(left + 1, right);
  }
}
