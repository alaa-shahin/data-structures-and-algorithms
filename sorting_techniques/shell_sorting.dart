void main() {
  shellSort();
}  

void shellSort() {
  List<int> list = [1,8,63,87,30,65,5,2,7,9];
  int inner;
  int outer;
  int valueToInsert;
  int val = 1;

  while (val <= list.length/3) {
    val = val * 3 + 1 ;
  }

  while(val > 0) {
    for (outer = val; outer < list.length; outer++) {
      valueToInsert = list[outer];
      inner = outer;
      while (inner > val -1 && list[inner - val] >= valueToInsert) {
        list[inner] = list[inner - val];
        inner -= val;
      }
      list[inner] = valueToInsert;
    }
    val = ((val -1) ~/3).toInt();	  
  }
  print(list);
}
