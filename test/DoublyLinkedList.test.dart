import 'package:test/test.dart';

import '../bin/data_structures/DoublyLinkedList/DoublyLinkedList.dart';
import '../bin/data_structures/DoublyLinkedList/Node.dart';

void main() {
  group('Doubly Node Tests - ', () {
    test(
        'Previos and next nodes must be empty when the new node instance was created.',
        () {
      var node = Node(7);
      expect(node.value, equals(7));
      expect(node.previous, equals(null));
      expect(node.next, equals(null));
    });
  });

  group('Double Linked List Tests - ', () {
    test('List must be empty when the instance was initialized.', () {
      var list = DoublyLinkedList();
      expect(list.length(), equals(0));
    });

    test('Append must add the value at the end of the list.', () {
      var list = DoublyLinkedList();
      expect(list.append(7), equals(7));
      expect(list.head!.value, equals(7));
      expect(list.tail!.value, equals(7));
      expect(list.length(), equals(1));

      expect(list.append(27), equals(27));
      expect(list.head!.value, isNot(equals(27)));
      expect(list.tail!.value, equals(27));
      expect(list.length(), equals(2));
    });

    test('Prepend must add the value at the first index of the list.', () {
      var list = DoublyLinkedList();
      list.append(3);
      list.append(5);
      list.append(7);
      list.prepend(1);
      expect(list.head!.value, equals(1));
      expect(list.tail!.value, equals(7));
    });

    test('Find must find the node which has the given value.', () {
      var list = DoublyLinkedList();
      list.append(3);
      list.append(5);
      list.append(7);
      list.append(9);
      expect(list.length(), equals(4));
      expect(list.find(7)!.value, equals(7));
    });

    test(
        'Find must delete given value if exists and then it must return boolean value.',
        () {
      var list = DoublyLinkedList();
      list.append(3);
      list.append(5);
      list.append(7);
      list.append(9);
      expect(list.length(), equals(4));
      expect(list.delete(7), equals(true));
      expect(list.length(), equals(3));
      expect(list.delete(3), equals(true));
      expect(list.length(), equals(2));
      expect(list.delete(9), equals(true));
      expect(list.length(), equals(1));
    });
  });
}
