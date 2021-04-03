import 'dart:collection';

import 'package:test/test.dart';

import '../bin/data_structures/queue/queue.dart';
import '../bin/data_structures/queue/node.dart';

void main() {
  group('Node Tests - ', () {
    test('Node must be initialized with the given parameter', () {
      var n = Node(7);
      expect(n.value, equals(7));
    });
  });
  group('Queue Tests - ', () {
    test('Queue instance must be empty when it was initialized.', () {
      // You can use 'new Queue()' notation instead of directly using 'Queue()'. Both are the same.
      expect(Queue().length(), equals(0));
    });
    test(
        'If the Queue is empty, new enqueued value must be the head and tail at the same time.',
        () {
      var q = Queue();
      q.enqueue(7);
      expect(q.head!.value, equals(7));
      expect(q.tail!.value, equals(7));
    });
    test('New added nodes must be the new tail.', () {
      var q = Queue();
      q.enqueue(7);
      expect(q.head!.value, equals(7));
      expect(q.tail!.value, equals(7));
      q.enqueue(9);
      expect(q.head!.value, equals(7));
      expect(q.tail!.value, equals(9));
      q.enqueue(11);
      expect(q.head!.value, equals(7));
      expect(q.tail!.value, equals(11));
    });
    test('Dequeed value must be the head of the queue.', () {
      var q = Queue();
      q.enqueue(7);
      q.enqueue(9);
      q.enqueue(11);
      expect(q.head!.value, equals(7));
      expect(q.tail!.value, equals(11));
      var dequeued = q.dequeue();
      expect(dequeued, equals(7));
      expect(q.head!.value, equals(9));
      expect(q.tail!.value, equals(11));
      dequeued = q.dequeue();
      expect(dequeued, equals(9));
      expect(q.head!.value, equals(11));
      expect(q.tail!.value, equals(11));
      dequeued = q.dequeue();
      expect(dequeued, equals(11));
      expect(q.head, equals(null));
      expect(q.tail, equals(null));
    });
  });
}
