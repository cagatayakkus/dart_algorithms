class Node {
  final int _value;
  Node? next;

  Node(this._value);

  Node.dependent(this._value, this.next);

  int get value => _value;
}
