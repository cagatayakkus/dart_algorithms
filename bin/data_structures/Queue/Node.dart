class Node {
  Node? nextNode;
  int nodeValue;
  Node(this.nodeValue);

  int get value => nodeValue;
  set value(int value) => nodeValue = value;

  Node? get next => nextNode;
  set next(Node? node) => nextNode = node;
}
