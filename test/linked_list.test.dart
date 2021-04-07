import 'dart:collection';

import 'package:test/test.dart';

import '../bin/data_structures/linked_list/linked_list.dart';
import '../bin/data_structures/linked_list/node.dart';

void main() {
  group('Node Tests - ', () {
    test('Node should be created without next statement.', () {
      var node = Node(5);
      expect(node.next, equals(null));
    });

    test('Node should be created with next statement.', () {
      var secondNode = Node(72);
      var firstNode = Node.dependent(27, secondNode);
      expect(firstNode.next, isNot(null));
      expect(firstNode.next, secondNode);
    });

    test('Next node could be assigned after initialization.', () {
      var firstNode = Node(27);
      var secondNode = Node(72);
      firstNode.next = secondNode;
      expect(firstNode.next, equals(isNot(null)));
      expect(firstNode.next, secondNode);
    });
  });

  group('Linked List Tests - ', () {
    group('List Creation - ', () {
      test('List must be created as empty.', () {
        var list = LinkedList();
        expect(list.head, equals(null));
        expect(list.tail, equals(null));
        expect(list.length(), equals(0));
      });
    });
    group('Node Addition - ', () {
      test('New node could append to the list.', () {
        var list = LinkedList();
        list.append(3);
        expect(list.length(), equals(1));
        list.append(5);
        expect(list.length(), equals(2));
        list.append(7);
        expect(list.length(), equals(3));
        expect(list.tail!.value, equals(7));
      });

      test('New node could prepend to the list.', () {
        var list = LinkedList();
        list.append(3);
        expect(list.length(), equals(1));
        list.append(5);
        expect(list.length(), equals(2));
        list.append(7);
        expect(list.length(), equals(3));
        list.prepend(9);
        expect(list.length(), equals(4));
        expect(list.head!.value, equals(9));
      });

      test('Get function must returns the value of given index', () {
        var list = LinkedList();
        list.append(3);
        list.append(5);
        list.append(7);
        list.append(9);
        expect(list.get(0), equals(3));
        expect(list.get(1), equals(5));
        expect(list.get(2), equals(7));
        expect(list.get(3), equals(9));
      });

      test('Insert must add new node to the given index.', () {
        var list = LinkedList();
        list.append(3);
        list.append(5);
        list.append(7);
        list.append(9);
        list.insert(1, 4);
        expect(list.length(), equals(5));
        expect(list.get(1), equals(4));
        expect(list.insert(20, 30), equals(null));
      });
    });

    group('Node Searching - ', () {
      test('It should return false when the list is empty', () {
        var list = LinkedList();
        expect(list.contains(5), equals(false));
      });
      test('It should return true when the value was found.', () {
        var list = LinkedList();
        list.append(3);
        list.append(5);
        list.append(7);
        expect(list.contains(7), equals(true));
      });
      test('It should return false when it cannot found the value.', () {
        var list = LinkedList();
        list.append(3);
        list.append(5);
        list.append(7);
        expect(list.contains(9), equals(false));
      });
      test('It should delete the node if exists.', () {
        var list = LinkedList();
        list.append(5);
        list.append(7);
        expect(list.delete(7), equals(true));
        expect(list.contains(7), equals(false));
        expect(list.contains(5), equals(true));
        expect(list.length(), equals(1));
      });
    });
  });
}
