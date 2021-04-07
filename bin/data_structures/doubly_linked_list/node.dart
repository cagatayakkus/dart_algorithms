class Node {
  Node? previous;
  final int _value;
  Node? next;

  Node(this._value);

  int get value => _value;
}
