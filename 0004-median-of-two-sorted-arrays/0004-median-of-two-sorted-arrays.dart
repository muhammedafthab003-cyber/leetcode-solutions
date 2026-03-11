class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    if (nums1.length > nums2.length) {
      return findMedianSortedArrays(nums2, nums1);
    }

    int m = nums1.length;
    int n = nums2.length;

    int left = 0;
    int right = m;

    while (left <= right) {
      int partition1 = (left + right) ~/ 2;
      int partition2 = ((m + n + 1) ~/ 2) - partition1;

      int maxLeft1 = partition1 == 0 ? -10000000 : nums1[partition1 - 1];
      int minRight1 = partition1 == m ? 10000000 : nums1[partition1];

      int maxLeft2 = partition2 == 0 ? -10000000 : nums2[partition2 - 1];
      int minRight2 = partition2 == n ? 10000000 : nums2[partition2];

      if (maxLeft1 <= minRight2 && maxLeft2 <= minRight1) {
        if ((m + n) % 2 == 0) {
          return ( (max(maxLeft1, maxLeft2) + min(minRight1, minRight2)) / 2 );
        } else {
          return max(maxLeft1, maxLeft2).toDouble();
        }
      } 
      else if (maxLeft1 > minRight2) {
        right = partition1 - 1;
      } 
      else {
        left = partition1 + 1;
      }
    }

    return 0.0;
  }

  int max(int a, int b) => a > b ? a : b;
  int min(int a, int b) => a < b ? a : b;
}