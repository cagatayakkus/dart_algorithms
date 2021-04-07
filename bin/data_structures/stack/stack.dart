import 'node.dart';

class Stack {
  Node? head;
  Node? tail;
  Stack();
  int push(int value) {
    var newNode = Node(value);
    if (head == null) {
      head = newNode;
      tail = newNode;
      return newNode.value;
    }
    tail!.next = newNode;
    tail = newNode;
    return newNode.value;
  }

  int? pop() {
    if (head == null) {
      return null;
    }
    if (head == tail) {
      var temp = head;
      head = null;
      tail = null;
      return temp!.value;
    }
    var currentNode = head;
    while (currentNode!.next != tail) {
      currentNode = currentNode.next;
    }
    var temp = currentNode.next!.value;
    tail = currentNode;
    return temp;
  }

  int length() {
    var count = 0;
    if (head == null) {
      return count;
    }
    var currentNode = head;
    count++;
    while (currentNode!.next != null) {
      currentNode = currentNode.next;
      count++;
    }
    return count;
  }
}
