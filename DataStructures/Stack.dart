class Stack {
  var _stack = [];

  @override
  String toString() {
    return _stack.toString();
  }

  void pop() {
    _stack.removeAt(_stack.length - 1);
  }

  push(value) {
    _stack.add(value);
  }

  empty() {
    return _stack.length > 0 ? "Not Null" : "Null";
  }

  int size() {
    return _stack.length;
  }

  top() {
    return _stack[0];
  }
}

main(List<String> args) {
  Stack stack = Stack();

  print("Stack status: " + stack.empty().toString());
  print("Size: " + stack.size().toString());

  stack.push(1);
  stack.push(11);
  stack.push(111);
  stack.push(1111);

  print("After push: $stack");

  print("Stack status: " + stack.empty().toString());
  print("Size: " + stack.size().toString());

  stack.pop();
  stack.pop();
  stack.pop();

  print("After pop: " + stack.toString());
  print("Top: " + stack.top().toString());
}
