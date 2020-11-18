void main() {
  Queue str = Queue(6);
  str.enQueue(4);
  str.enQueue(65);
  str.enQueue(74);
  str.dnQueue();
  str.show();
}

class Queue {
  int size;
  List data = [];

  Queue(int s) {
    if(s<=0 ||s== null) {
      print("error");
    } else {
      size = s;
    }
  }

  void enQueue(int x) {
    if (data.length <size) {
      data.add(x);
    } else {
      print(" Queue is full");
    }
  }

  void deQueue() {
    if (0 == data.length) {
      print("Queue is empty");
    } else {
      data.removeAt(0);
    }
  }

  void show () {
    print(data);
  }
}
