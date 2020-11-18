void main() {
  Linkedlist str = Linkedlist();
  str.add(5);
  str.add(4);
  str.add(6);
  str.remove(2);
  str.show();
}

class Linkedlist {
  List data= [];
  int currntNode;
  
  void add(int x) {
    if(data.length ==0) {
      List l = [null, x, null];
      data.add(l);
      currntNode= 0;
    } else {
      List m = [data[currntNode][1], x, null];
      data.add(m);
      data[currntNode][2] = x;
      currntNode++;
    }
  }
  
  void remove(int x) {
    if(data.length ==0) {
      print("is empty");
    } else {
      if(data.length > x-1) {
        data.removeAt(x-1);
        if(data.length >= x) {
          data[x-2][2] = data[x-1][1];
        } else {
          data[x-2][2] = null;
        }
      } else {
        print('Element not Found');
      }
    }
   } 
  
 void show() {
    print(data);
 }
}
