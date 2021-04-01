import 'Node.dart';

class Queue {
  Node? headNode;
  Node? tailNode;

  Queue();

  Node? get head => headNode;
  set head(Node? head) => headNode = head;

  Node? get tail => tailNode;
  set tail(Node? tail) => tailNode = tail;

  int? enqueue(value) {
    var newNode = Node(value);
    if (headNode == null) {
      headNode = newNode;
      tailNode = newNode;
      return newNode.value;
    }
    tailNode!.next = newNode;
    tailNode = newNode;
    return newNode.value;
  }

  int? dequeue() {
    if (headNode == null) {
      return null;
    }
    if (headNode == tailNode) {
      var returnValue = headNode!.value;
      headNode = null;
      tailNode = null;
      return returnValue;
    }
    var returnValue = headNode!.value;
    headNode = head!.next;
    return returnValue;
  }

  int length() {
    var count = 0;
    if (headNode == null) {
      return count;
    }
    var currentNode = headNode;
    count++;
    while (currentNode!.next != null) {
      count++;
      currentNode = currentNode.next;
    }
    return count;
  }
}
