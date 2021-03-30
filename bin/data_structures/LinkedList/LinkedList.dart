import 'Node.dart';

class LinkedList {
  Node? headNode;
  Node? tailNode;

  LinkedList() {
    headNode = null;
    tailNode = null;
  }

  Node? get tail => tailNode;
  set tail(Node? tail) => tailNode = tail;

  Node? get head => headNode;
  set head(Node? head) => headNode = head;

  int append(int value) {
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

  int prepend(int value) {
    var newNode = Node(value);
    newNode.next = head;
    head = newNode;

    tail ??= newNode;

    return newNode.value;
  }

  bool contains(value) {
    if (head == null) {
      return false;
    }
    var currentNode = head;
    while (currentNode != null && currentNode.value != value) {
      currentNode = currentNode.next;
    }
    if (currentNode == null) {
      return false;
    }
    return true;
  }

  bool delete(value) {
    if (head == null) {
      return false;
    }
    var currentNode = head;
    if (currentNode!.value == value) {
      if (currentNode.next == null) {
        head = null;
        tail = null;
      }
      head = currentNode.next;
      return true;
    }

    while (currentNode!.next != null && currentNode.next!.value != value) {
      currentNode = currentNode.next;
    }

    if (currentNode.next != null) {
      if (currentNode.next == tail) {
        tail = currentNode;
        tail!.next = null;
        return true;
      }
      currentNode.next = currentNode.next!.next;
      return true;
    }
    return false;
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

  List? getList() {
    var elements = [];
    var currentNode = headNode;
    if (currentNode != null) {
      elements.add(currentNode.value);
      while (currentNode!.next != null) {
        currentNode = currentNode.next;
        elements.add(currentNode!.value);
      }
      return elements;
    } else {
      return null;
    }
  }
}
