import 'dart:math';

class BinaryNode<T> {
  BinaryNode(this.value);

  T value;
  BinaryNode<T>? leftChild;
  BinaryNode<T>? rightChild;

  static BinaryNode<int> createBinaryTree() {
    final zero = BinaryNode(0);
    final one = BinaryNode(1);
    final five = BinaryNode(5);
    final seven = BinaryNode(7);
    final eight = BinaryNode(8);
    final nine = BinaryNode(9);
    seven.leftChild = one;
    one.leftChild = zero;
    one.rightChild = five;
    seven.rightChild = nine;
    nine.leftChild = eight;
    return seven;
  }

  void traverseInOrder(void Function(T value) action) {
    leftChild?.traverseInOrder(action);
    action(value);
    rightChild?.traverseInOrder(action);
  }

  void traversePreOrder(void Function(T value) action) {
    action(value);
    leftChild?.traversePreOrder(action);
    rightChild?.traversePreOrder(action);
  }

  void traversePostOrder(void Function(T value) action) {
    leftChild?.traversePreOrder(action);
    rightChild?.traversePreOrder(action);
    action(value);
  }

  int height(BinaryNode? node) {
    if (node == null) return -1;
    return 1 +
        max(
          height(node.leftChild),
          height(node.rightChild),
        );
  }

  @override
  String toString() {
    return _diagram(this);
  }

  String _diagram(BinaryNode<T>? node,
      [String top = '', String root = '', String bottom = '']) {
    if (node == null) {
      return '$root null\n';
    }
    if (node.leftChild == null && node.rightChild == null) {
      return '$root ${node.value}\n';
    }
    final a = _diagram(
      node.rightChild,
      '$top ',
      '$top┌──',
      '$top│ ',
    );
    final b = '$root${node.value}\n';
    final c = _diagram(
      node.leftChild,
      '$bottom│ ',
      '$bottom└──',
      '$bottom ',
    );
    return '$a$b$c';
  }
}
