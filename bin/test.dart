import 'package:test/test.dart';
import 'Classes/Queue.dart';
import 'Classes/Stack.dart';
import 'dart:math';

void main() {
  var testList = [
    'foo',
    'bar',
    66,
    5.6,
    -53,
    -59.888,
  ];
  Queue queue;
  Stack stack;
  var random = Random();

  setUp(() {
    queue = Queue();
    stack = Stack();
  });

  dynamic testValue() {
    return testList[random.nextInt(6)];
  }

  void testQueue() {
    group('Test cases for the Queue Class:', () {
      test('Queue.enqueu() returning true on successful addition test', () {
        var value = testValue();
        expect(queue.enqueue(value), true);
      });
      test('Queue.dequeue() returning null on empty Queue test', () {
        expect(queue.dequeue(), null);
      });
      test('Queue.dequeue() returning last enqueued value test', () {
        var value = testValue();
        queue.enqueue(value);
        expect(queue.dequeue(), value);
      });
      test('Queue.isEmpty() returning true on empty Queue test', () {
        expect(queue.isEmpty(), true);
      });
      test('Queue.isEmpty() returning false on non-empty Queue test', () {
        var value = testValue();
        queue.enqueue(value);
        expect(queue.isEmpty(), false);
      });
      test('Queue.peek() returning first value in the queue test', () {
        var value1 = testValue();
        var value2 = testValue();
        queue.enqueue(value1);
        queue.enqueue(value2);
        expect(queue.peek(), value1);
      });
      test('Queue.length() returning the length of the Queue test', () {
        expect(queue.length(), 0);
        queue.enqueue(testValue());
        expect(queue.length(), 1);
        queue.enqueue(testValue());
        expect(queue.length(), 2);
        queue.enqueue(testValue());
        expect(queue.length(), 3);
      });
    });
  }

  void testStack() {
    group('Test cases for the Stack Class:', () {
      test('Stack.push() returning true on successful addition test', () {
        var value = testValue();
        expect(stack.push(value), true);
      });
      test('Stack.pop() returning null on empty Stack test', () {
        expect(stack.pop(), null);
      });
      test('Stack.pop() returning last pushed value test', () {
        var value = testValue();
        stack.push(value);
        expect(stack.pop(), value);
      });
      test('Stack.isEmpty() returning true on empty Stack test', () {
        expect(stack.isEmpty(), true);
      });
      test('Stack.isEmpty() returning false on non-empty Stack test', () {
        var value = testValue();
        stack.push(value);
        expect(stack.isEmpty(), false);
      });
      test('Stack.peek() returning the top of stack test', () {
        var value1 = testValue();
        var value2 = testValue();
        stack.push(value1);
        stack.push(value2);
        expect(stack.peek(), value2);
      });
      test('Stack.length() returning the length of the Stack test', () {
        expect(stack.length(), 0);
        stack.push(testValue());
        expect(stack.length(), 1);
        stack.push(testValue());
        expect(stack.length(), 2);
        stack.push(testValue());
        expect(stack.length(), 3);
      });
    });
  }

  for (var i = 0; i < 14286; i++) {
    testQueue();
    testStack();
  }

  tearDown(() {
    queue = null;
    stack = null;
  });
}
