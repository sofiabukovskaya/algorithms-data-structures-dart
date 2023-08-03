import 'package:algorithms_data_structures/data_structures/linked_list/linked_list.dart';
import 'package:algorithms_data_structures/data_structures/queue/queue.dart';

class QueueLinkedList<E> implements Queue {
  final _list = LinkedList<E>();

  @override
  dequeue() => _list.pop();

  @override
  bool enqueue(element) {
    _list.append(element);
    return true;
  }

  @override
  // TODO: implement isEmpty
  bool get isEmpty => _list.isEmpty;

  @override
  // TODO: implement peek
  get peek => _list.head?.value;

  @override
  String toString() => _list.toString();
}
