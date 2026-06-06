class Solution {
  List<int> inorderTraversal(TreeNode? root) {
    List<int> result = [];

    void dfs(TreeNode? node) {
      if (node == null) return;

      dfs(node.left);          
      result.add(node.val);    
      dfs(node.right);         
    }

    dfs(root);
    return result;
  }
}