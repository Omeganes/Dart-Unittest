/// Generic Queue Data Structure
class Queue {
  final List<dynamic> _queue = [];

  /// Inserts a new item to the Queue
  bool enqueue(var newItem) {
    _queue.add(newItem);
    if (_queue.contains(newItem)) {
      return true;
    } else {
      return false;
    }
  }

  /// Returns the first element in the Queue and removes it
  dynamic dequeue() {
    if (isEmpty()) {
      return null;
    } else {
      return _queue.removeAt(0);
    }
  }

  /// Checks if the Queue is empty
  bool isEmpty() {
    return _queue.isEmpty;
  }

  /// Returns the first element in the Queue without removal
  dynamic peek() {
    return _queue.elementAt(0);
  }

  /// Returns the length of the Queue
  int length() {
    return _queue.length;
  }
}
