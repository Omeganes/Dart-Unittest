/// Generic Stack Data Structure
class Stack {
  final List<dynamic> _stack = [];

  /// Pushes a new element to the Stack
  bool push(var newItem) {
    _stack.add(newItem);
    if (_stack.contains(newItem)) {
      return true;
    } else {
      return false;
    }
  }

  /// Returns the top of the Stack and removes it
  dynamic pop() {
    if (isEmpty()) {
      return null;
    } else {
      return _stack.removeLast();
    }
  }

  /// Checks if the Stack is empty
  bool isEmpty() {
    return _stack.isEmpty;
  }

  /// Returns the top of the Stack without removal
  dynamic peek() {
    if (isEmpty()) {
      return null;
    } else {
      return _stack.elementAt(length() - 1);
    }
  }

  /// Returns the length of the Stack
  int length() {
    return _stack.length;
  }
}
