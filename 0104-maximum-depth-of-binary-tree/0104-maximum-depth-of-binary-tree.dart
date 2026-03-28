import 'dart:collection';

class Solution {
  int maxDepth(TreeNode? root) {
    if (root == null) return 0;

    Queue<TreeNode> queue = Queue();
    queue.add(root);

    int depth = 0;

    while (queue.isNotEmpty) {
      int size = queue.length;

      for (int i = 0; i < size; i++) {
        TreeNode node = queue.removeFirst();

        if (node.left != null) queue.add(node.left!);
        if (node.right != null) queue.add(node.right!);
      }

      depth++;
    }

    return depth;
  }
}