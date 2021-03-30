class Node {
  int nodeValue;
  Node? nextNode;

  Node(this.nodeValue);

  Node.dependent(this.nodeValue, this.nextNode);

  int get value => nodeValue;

  Node? get next => nextNode;

  set next(Node? newNode) => nextNode = newNode;
}
