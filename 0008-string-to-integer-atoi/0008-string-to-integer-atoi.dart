class Solution {
  int myAtoi(String s) {
    int i = 0;
    int n = s.length;
    int sign = 1;
    int result = 0;

    
    int INT_MAX = 2147483647;
    int INT_MIN = -2147483648;

    
    while (i < n && s[i] == ' ') {
      i++;
    }

    
    if (i < n && (s[i] == '-' || s[i] == '+')) {
      sign = (s[i] == '-') ? -1 : 1;
      i++;
    }


    while (i < n) {
      int digit = s.codeUnitAt(i) - '0'.codeUnitAt(0);

      if (digit < 0 || digit > 9) break;

      if (result > INT_MAX ~/ 10 ||
          (result == INT_MAX ~/ 10 && digit > 7)) {
        return sign == 1 ? INT_MAX : INT_MIN;
      }

      result = result * 10 + digit;
      i++;
    }

    return result * sign;
  }
}
