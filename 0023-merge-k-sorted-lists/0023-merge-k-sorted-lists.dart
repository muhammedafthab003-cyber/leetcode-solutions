import 'package:collection/collection.dart';

class Solution {
  ListNode? mergeKLists(List<ListNode?> lists) {
    PriorityQueue<ListNode> pq = PriorityQueue(
      (a, b) => a.val.compareTo(b.val),
    );

    
    for (var node in lists) {
      if (node != null) {
        pq.add(node);
      }
    }

    ListNode dummy = ListNode(0);
    ListNode current = dummy;

    while (pq.isNotEmpty) {
      ListNode smallest = pq.removeFirst();
      current.next = smallest;
      current = current.next!;

      if (smallest.next != null) {
        pq.add(smallest.next!);
      }
    }

    return dummy.next;
  }
}