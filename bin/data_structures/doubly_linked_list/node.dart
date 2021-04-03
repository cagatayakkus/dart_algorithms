class Node {
  Node? previous;
  int _nodeValue;
  Node? next;

  Node(this._nodeValue);
  int get value => _nodeValue;
}
