import 'package:algorithms_data_structures/data_structures/queue/queue.dart';

class QueueStack<E> implements Queue {
  final _leftStack = <E>[];
  final _rightStack = <E>[];

  @override
  dequeue() {
    if (_leftStack.isEmpty) {
      _leftStack.addAll(_rightStack.reversed);
      _rightStack.clear();
    }
    if (_leftStack.isEmpty) return null;

    return _leftStack.removeLast();
  }

  @override
  bool enqueue(element) {
    _rightStack.add(element);
    return true;
  }

  @override
  // TODO: implement isEmpty
  bool get isEmpty => _leftStack.isEmpty && _rightStack.isEmpty;

  @override
  // TODO: implement peek
  get peek => _leftStack.isNotEmpty ? _leftStack.last : _rightStack.first;

  @override
  String toString() {
    final combined = [
      ..._leftStack.reversed,
      ..._rightStack,
    ].join(', ');
    return '[$combined]';
  }
}
