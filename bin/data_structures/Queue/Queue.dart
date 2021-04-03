import 'node.dart';

class Queue {
  Node? head;
  Node? tail;

  Queue();

  int? enqueue(value) {
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

  int? dequeue() {
    if (head == null) {
      return null;
    }
    if (head == tail) {
      var returnValue = head!.value;
      head = null;
      tail = null;
      return returnValue;
    }
    var returnValue = head!.value;
    head = head!.next;
    return returnValue;
  }

  int length() {
    var count = 0;
    if (head == null) {
      return count;
    }
    var currentNode = head;
    count++;
    while (currentNode!.next != null) {
      count++;
      currentNode = currentNode.next;
    }
    return count;
  }
}
