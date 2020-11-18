void main() {	 
 HashTable h = HashTable();
  h.insert(7, 50);
  h.insert(15, 100);
  h.insert(20, 200);
  h.insert(42, 300);
  h.insert(37, 400);
  h.search(42);
  h.delete(37);
  h.show();
}

class Element {
  int key;
  int value;
}

Element obj = Element();

class HashTable {
  
  List list = List<Element>.filled(20, obj, growable: true);
  
  void insert (int key, int data) {
    Element ele = Element();
    ele.key     = key;
    ele.value   = data;
    int index   = key % list.length;
    
    while(list[index].value != null && list[index].key != null) {
      index++;
      if (list[index].value == null && list[index].key == null) {
        list[index] = ele;
        return;
      }
    }
    list[index] = ele;
  }

  void search(int key) {
    int index = key % list.length;
    while(list[index].value != null && list[index].key != null) {
      if(list[index].key == key) {
        print('value is ${list[index].value}');
      }
      index++;
    }
    return null;
  }

  void delete(int key) {
    int index = key % list.length;
    if(list[index].value != null && list[index].key != null) {
      list[index].key = null;
      list[index].value = null;
    }
  }
  
  void show() {
    for(int i = 0; i < list.length; i++) {
      if(list[i].value != null && list[i].key != null) {
        print('${list[i].key} / ${list[i].value}');
      } else {
        print('-----------');
      }
    }
  }
}
