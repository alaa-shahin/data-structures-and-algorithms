void main() {
 print(bubbleSort());
}  

List<int> bubbleSort() {
  List<int> list = [1,8,4,6,30,25,5,2,7,9];
  for (int i = 0; i < list.length; i++) {
    for (int j = 1; j < list.length - i; j++) {
      if (list[j-1] > list[j]) {
        int num = list[j-1];
        list[j-1] = list[j];
        list[j] = num;
      }
    }
  }
  return list;
}
