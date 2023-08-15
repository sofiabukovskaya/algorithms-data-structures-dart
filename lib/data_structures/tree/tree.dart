import 'package:algorithms_data_structures/data_structures/queue/queue_stack.dart';

class TreeNode<T> {
  TreeNode(this.value);
  T value;
  List<TreeNode<T>> children = [];

  void add(TreeNode<T> child) {
    children.add(child);
  }

  void forEachDepthFirst(void Function(TreeNode<T> node) performAction) {
    performAction(this);
    for (final child in children) {
      child.forEachDepthFirst(performAction);
    }
  }

  void forEachLevelOrder(void Function(TreeNode<T> node) performAction) {
    final queue = QueueStack<TreeNode<T>>();
    performAction(this);
    children.forEach(queue.enqueue);
    var node = queue.dequeue();
    while (node != null) {
      performAction(node);
      node.children.forEach(queue.enqueue);
      node = queue.dequeue();
    }
  }

  TreeNode? search(T value) {
    TreeNode? result;
    forEachLevelOrder(
      (node) {
        if (node.value == value) {
          result = node;
        }
      },
    );
    return result;
  }

  void challenge1PrintEachLevel(TreeNode<T> tree) {
    final result = StringBuffer();

    var queue = QueueStack<TreeNode<T>>();
    var nodesLeftInCurrentLevel = 0;
    queue.enqueue(tree);

    while (!queue.isEmpty) {
      nodesLeftInCurrentLevel = queue.length;
      while (nodesLeftInCurrentLevel > 0) {
        final node = queue.dequeue();
        if (node == null) break;
        result.write('${node.value} ');
        for (var element in node.children) {
          queue.enqueue(element);
        }
        nodesLeftInCurrentLevel -= 1;
      }
      result.write('\n');
    }
    print(result);
  }

  static TreeNode<String> makeBeverageTree() {
    final tree = TreeNode('beverages');
    final hot = TreeNode('hot');
    final cold = TreeNode('cold');
    final tea = TreeNode('tea');
    final coffee = TreeNode('coffee');
    final chocolate = TreeNode('cocoa');
    final blackTea = TreeNode('black');
    final greenTea = TreeNode('green');
    final chaiTea = TreeNode('chai');
    final soda = TreeNode('soda');
    final milk = TreeNode('milk');
    final gingerAle = TreeNode('ginger ale');
    final bitterLemon = TreeNode('bitter lemon');

    tree.add(hot);
    tree.add(cold);
    hot.add(tea);
    hot.add(coffee);
    hot.add(chocolate);
    cold.add(soda);
    cold.add(milk);
    tea.add(blackTea);
    tea.add(greenTea);
    tea.add(chaiTea);
    soda.add(gingerAle);
    soda.add(bitterLemon);
    return tree;
  }
}
