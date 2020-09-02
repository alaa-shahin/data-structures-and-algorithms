void main() {
  Queue str = Queue(6);
  str.enqueue(4);
  str.enqueue(65);
  str.enqueue(74);
  str.dequeue();
  str.show();

}

class Queue {
  int size;
  List data = [];
  
  Queue(int s){
    if(s<=0 ||s== null){
      print("error");
    } else {
     size = s;
    }
  }
  
  void enqueue(int x){
    if (data.length <size){
       data.add(x);
    }else {
      print(" Queue is full");
    }
  }
  
  void dequeue(){
    if (data.length==0){
      print("Queue is empty");
    }else {
      data.removeAt(0);
    }
  }
  void show (){
    print(data);
  }
}	
