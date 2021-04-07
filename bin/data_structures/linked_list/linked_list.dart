import 'node.dart';

class LinkedList {
  Node? head;
  Node? tail;

  LinkedList();

  /// Appends a new node, which will be automatically created according to the given value, to the list.
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

  /// Prepends a new node, which is automatically created according to the given value, to the list.
  int prepend(int value) {
    var newNode = Node(value);
    newNode.next = head;
    head = newNode;

    tail ??= newNode;

    return newNode.value;
  }

  /// Inserts new node to the given index.
  ///
  /// It takes the first element as index 0.
  int? insert(int index, int value) {
    if (length() <= index || head == null) {
      return null;
    }
    var newNode = Node(value);
    var currentNode = head;
    for (var i = 1; i < index; i++) {
      currentNode = currentNode!.next;
    }
    var temp = currentNode!.next;
    currentNode.next = newNode;
    newNode.next = temp;
    return newNode.value;
  }

  /// Looks up if the list contains the given value.
  ///
  /// If exists returns true, if not returns false
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

  /// Deletes the given value from list.
  ///
  /// It deletes when first met with the value.
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

  /// Returns the value of the node of the given index.
  ///
  /// It takes the first element as index 0.
  int? get(int index) {
    if (length() <= index || head == null) {
      return null;
    }
    var currentNode = head;
    for (var i = 0; i < index; i++) {
      currentNode = currentNode!.next;
    }
    return currentNode!.value;
  }

  /// Returns how many nodes are there in this list.
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
