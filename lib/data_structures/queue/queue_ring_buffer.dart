import 'package:algorithms_data_structures/data_structures/queue/queue.dart';
import 'package:algorithms_data_structures/data_structures/ring_buffer/ring_buffer.dart';

class QueueRingBuffer<E> implements Queue {
  QueueRingBuffer(int length) : _ringBuffer = RingBuffer(length);

  final RingBuffer<E> _ringBuffer;
  @override
  dequeue() => _ringBuffer.read();

  @override
  bool enqueue(element) {
    if (_ringBuffer.isFull) {
      return false;
    }
    _ringBuffer.write(element);
    return true;
  }

  @override
  // TODO: implement isEmpty
  bool get isEmpty => _ringBuffer.isEmpty;

  @override
  // TODO: implement peek
  get peek => _ringBuffer.peek;

  @override
  String toString() => _ringBuffer.toString();
}
