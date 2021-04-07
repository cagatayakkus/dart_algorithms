import 'package:test/test.dart';
import '../bin/data_structures/stack/stack.dart';

void main() {
  group('Stack Tests - ', () {
    test('A new stack must be initialized as empty.', () {
      var s = Stack();
      expect(s.length(), equals(0));
    });
    test('First pushed node must be the head and the tail at the same time.',
        () {
      var s = Stack();
      s.push(5);
      expect(s.head == s.tail, equals(true));
    });
    test('When the new node pushed to the stack, it must be the new tail.', () {
      var s = Stack();
      s.push(5);
      s.push(7);
      expect(s.head!.value, equals(5));
      expect(s.tail!.value, equals(7));
    });
    test('Length function must be returned the number of nodes in the stack.',
        () {
      var s = Stack();
      s.push(3);
      s.push(5);
      s.push(7);
      s.push(9);
      expect(s.length(), equals(4));
    });
    test('Tail must be returned when the pop process executed.', () {
      var s = Stack();
      s.push(3);
      s.push(5);
      s.push(7);
      s.push(9);
      expect(s.pop(), equals(9));
      expect(s.tail!.value, equals(7));
      expect(s.pop(), equals(7));
      expect(s.tail!.value, equals(5));
    });
    test('The stack must be empty when all nodes popped.', () {
      var s = Stack();
      s.push(3);
      s.push(5);
      expect(s.length(), equals(2));
      s.pop();
      s.pop();
      expect(s.length(), equals(0));
    });
  });
}
