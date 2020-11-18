void main() {
  Stack str = Stack(6);
  str.push(5);
  str.push(4);
  str.push(6);
  str.push(65);
  str.push(57);
  str.pop();
  str.show();
}

class Stack {
  int size;
  List data = [];

  Stack(int s) {
    if(s <= 0 || s == null) {
      print('Error');
    } else {
      size = s;
    }  
  }

  void push(int x) {
    if (data.length < size) {
      data.add(x);
    } else {
      print('Stack is full');
    }
  }

  void pop() {
    if(0 == data.length) {
      print('Stack is empty');
    } else {
      data.removeAt(data.length-1);
    }
  }

  void show() {
    print(data);  
  }
}
