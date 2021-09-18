class Queue {
  var _queue = [];

  @override
  String toString() {
    return _queue.toString();
  }

  void deQueue() {
    _queue.removeAt(0);
  }

  void enQueue(value) {
    _queue.add(value);
  }

  int size() {
    return _queue.length;
  }

  font() {
    return _queue[0];
  }

  rear() {
    return _queue[_queue.length - 1];
  }
}

main(List<String> args) {
  Queue q = Queue();
  print("Current Queue Size: " + q.size().toString());
  q.enQueue(1);
  q.enQueue(2);
  q.enQueue(3);
  q.enQueue(4);

  print("After Enueue : " + q.toString());

  print("Queue font: " + q.font().toString());
  print("Queue rear: " + q.rear().toString());

  q.deQueue();
  q.deQueue();
  print("After Dequeue : " + q.toString());
}
