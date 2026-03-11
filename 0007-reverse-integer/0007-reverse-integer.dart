class Solution {
  int reverse(int x) {
    int sign = x < 0 ? -1 : 1;
    x = x.abs();

    int rev = 0;

    while (x != 0) {
      int digit = x % 10;
      x ~/= 10;

      if (rev > 214748364) return 0;

      rev = rev * 10 + digit;
    }

    return rev * sign;
  }
}