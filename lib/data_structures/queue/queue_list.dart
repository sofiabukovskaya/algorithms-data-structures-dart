import 'package:algorithms_data_structures/data_structures/queue/queue.dart';

class QueueList<E> implements Queue {
  final _list = <E>[];

  @override
  dequeue() => (isEmpty) ? null : _list.removeAt(0);

  @override
  bool enqueue(element) {
    _list.add(element);
    return true;
  }

  @override
  // TODO: implement isEmpty
  bool get isEmpty => _list.isEmpty;

  @override
  // TODO: implement peek
  get peek => (isEmpty) ? null : _list.first;

  @override
  String toString() => _list.toString();
}
