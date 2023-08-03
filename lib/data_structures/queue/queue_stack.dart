import 'package:algorithms_data_structures/data_structures/queue/queue.dart';

class QueueStack<E> implements Queue {
  final _leftStack = <E>[];
  final _rightStack = <E>[];

  @override
  dequeue() {
    // TODO: implement dequeue
    throw UnimplementedError();
  }

  @override
  bool enqueue(element) {
    // TODO: implement enqueue
    throw UnimplementedError();
  }

  @override
  // TODO: implement isEmpty
  bool get isEmpty => throw UnimplementedError();

  @override
  // TODO: implement peek
  get peek => throw UnimplementedError();
}
