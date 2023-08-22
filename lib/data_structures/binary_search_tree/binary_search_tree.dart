import 'package:algorithms_data_structures/data_structures/binary_node/binary_node.dart';

class BinarySearchTree<E extends Comparable<dynamic>> {
  BinaryNode<E>? root;

  @override
  String toString() => root.toString();

  void insert(E value) {
    root = _insertAt(root, value);
  }

  void remove(E value) {
    root = _remove(root, value);
  }

  BinaryNode<E>? _remove(BinaryNode<E>? node, E value) {
    if (node == null) return null;
    if (value == node.value) {
      if (node.leftChild == null && node.rightChild == null) {
        return null;
      }
      if (node.leftChild == null) {
        return node.rightChild;
      }
      if (node.rightChild == null) {
        return node.leftChild;
      }
      node.value = node.rightChild!.min.value;
      node.rightChild = _remove(node.rightChild, node.value);
    } else if (value.compareTo(node.value) < 0) {
      node.leftChild = _remove(node.leftChild, value);
    } else {
      node.rightChild = _remove(node.rightChild, value);
    }
    return node;
  }

  BinaryNode<E> _insertAt(BinaryNode<E>? node, E value) {
    if (node == null) {
      return BinaryNode(value);
    }

    if (value.compareTo(node.value) < 0) {
      node.leftChild = _insertAt(node.leftChild, value);
    } else {
      node.rightChild = _insertAt(node.rightChild, value);
    }
    return node;
  }

  bool contains(E value) {
    if (root == null) return false;
    var found = false;
    root!.traverseInOrder((other) {
      if (value == other) {
        found = true;
      }
    });
    return found;
  }
}

extension _MinFinder<E> on BinaryNode<E> {
  BinaryNode<E> get min => leftChild?.min ?? this;
}
