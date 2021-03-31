import 'Node.dart';

class DoublyLinkedList {
  Node? headNode;
  Node? tailNode;
  DoublyLinkedList();

  Node? get tail => tailNode;
  Node? get head => headNode;

  set head(Node? head) => headNode = head;
  set tail(Node? tail) => tailNode = tail;

  int append(int value) {
    var newNode = Node(value);
    if (headNode == null) {
      headNode = newNode;
      tailNode = newNode;
      return newNode.value;
    }
    newNode.previous = tailNode;
    tail!.next = newNode;
    tailNode = newNode;
    return newNode.value;
  }

  int prepend(int value) {
    var newNode = Node(value);

    if (headNode == null) {
      headNode = newNode;
      tailNode = newNode;
      return newNode.value;
    }

    newNode.next = headNode;
    headNode!.previous = newNode;
    headNode = newNode;
    return newNode.value;
  }

  Node? find(int value) {
    if (head == null) {
      return null;
    }
    var currentNode = head;
    while (currentNode != null) {
      if (currentNode.value == value) {
        return currentNode;
      }
      currentNode = currentNode.next;
    }
    return null;
  }

  bool? delete(int value) {
    if (head == null) {
      return null;
    }
    var currentNode = head;
    if (value == head!.value) {
      if (head == tail) {
        head = null;
        tail = null;
        return true;
      }
      head = head!.next;
      head!.previous = null;
      return true;
    }
    currentNode = head!.next;
    while (currentNode != null && currentNode.value != value) {
      currentNode = currentNode.next;
    }
    if (currentNode == tail) {
      tail = tail!.previous;
      tail!.next = null;
      return true;
    } else if (currentNode != null) {
      currentNode.previous!.next = currentNode.next;
      currentNode.next!.previous = currentNode.previous;
      return true;
    }
    return false;
  }

  int length() {
    var count = 0;
    if (headNode == null) {
      return count;
    }
    var currentNode = headNode;
    count++;
    while (currentNode!.next != null) {
      currentNode = currentNode.next;
      count++;
    }
    return count;
  }
}
