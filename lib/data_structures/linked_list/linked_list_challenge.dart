import 'package:algorithms_data_structures/data_structures/linked_list/linked_list.dart';
import 'package:algorithms_data_structures/data_structures/linked_list/node.dart';

class LinkedListChallenge {
  ///Challenge 1: Print in Reverse
  /// Create a function that prints the nodes of a linked list in reverse order
  static void printNodesRecursively<T>(Node<T>? node) {
    if (node == null) return;
    printNodesRecursively(node.next);
    print(node.value);
  }

  ///Challenge 2: Find the Middle Node
  /// Create a function that finds the middle node of a linked list.
  static Node<E>? getMiddle<E>(LinkedList<E> list) {
    var slow = list.head;
    var fast = list.head;
    while (fast?.next != null) {
      fast = fast?.next?.next;
      slow = slow?.next;
    }
    return slow;
  }
}
