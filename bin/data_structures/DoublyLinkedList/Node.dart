class Node {
  Node? previousNode;
  int nodeValue;
  Node? nextNode;

  Node(this.nodeValue);

  Node? get previous => previousNode;
  set previous(Node? newNode) => previousNode = newNode;

  Node? get next => nextNode;
  set next(Node? newNode) => nextNode = newNode;

  int get value => nodeValue;
}
