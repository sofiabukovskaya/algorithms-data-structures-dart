import 'package:algorithms_data_structures/data_structures/linked_list/linked_list.dart';
import 'package:algorithms_data_structures/data_structures/stack/stack.dart';

import 'data_structures/queue/queue_linked_list.dart';
import 'data_structures/queue/queue_list.dart';
import 'data_structures/queue/queue_ring_buffer.dart';

void main() {
  ///Stack
  print('-----------Stack-----------');
  final stack = StackStructure();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  print(stack);
  final element = stack.pop();
  print('Popped: $element');
  const list = ['H', 'E', 'Y'];
  final smokeStack = StackStructure.of(list);
  print(smokeStack);
  smokeStack.pop();

  ///LinkedList
  print('-----------LinkedList-----------');
  final linkedList = LinkedList<int>();
  linkedList.push(3);
  linkedList.push(2);
  linkedList.push(1);
  print('Before: $linkedList');
  final firstNode = linkedList.nodeAt(0);
  final removedValue = linkedList.removeAfter(firstNode!);
  print('After:  $linkedList');
  print('Removed value: $removedValue');

  ///Queue (List implementation)
  print('-----------Queue (List implementation)-----------');
  final queue = QueueList<String>();
  queue.enqueue('Sonia');
  queue.enqueue('Archick');
  queue.enqueue('Denys');
  print(queue);
  queue.dequeue();
  print(queue);
  queue.peek;
  print(queue);

  ///Queue (Linked-list implementation)
  print('-----------Queue (Linked-list implementation)-----------');
  final queueLinked = QueueLinkedList<String>();
  queueLinked.enqueue('Sonia');
  queueLinked.enqueue('Archick');
  queueLinked.enqueue('Denys');
  print(queueLinked);
  queueLinked.dequeue();
  print(queueLinked);
  queueLinked.peek;
  print(queueLinked);

  ///Queue (Ring Buffer implementation)
  print('-----------Queue (Ring Buffer implementation)-----------');
  final queueRingBuffer = QueueRingBuffer<String>(10);
  queueRingBuffer.enqueue('Sonia');
  queueRingBuffer.enqueue('Archick');
  queueRingBuffer.enqueue('Denys');
  print(queueRingBuffer);
  queueRingBuffer.dequeue();
  print(queueRingBuffer);
  queueRingBuffer.peek;
  print(queueRingBuffer);
}
