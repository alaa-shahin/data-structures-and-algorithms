void main() {
 print(selectionSort());
}  

List<int> selectionSort() {
  List<int> list = [1,8,4,6,30,25,5,2,7,9];

  for (int i = 0; i < list.length; i++) {
    for (int j = i+1; j < list.length; j++) {
      if (list[i] > list[j]) {
        int num = list[i];
        list[i] = list[j];
        list[j] = num;
      }
    }
  }
  return list;
}
