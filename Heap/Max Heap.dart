void main() {
  List a = [3,5,10,20,11,13,12,31];
  sort(a);
  print(a);
}
  
  void heapify(List list, int n, int i) {
    int leftNode = i * 2 + 1;
    int rightNode = i * 2 + 2;
    int largest = i;
    
    if(leftNode < n && list[leftNode] < list[largest]) { 
      largest = leftNode;
    }
    
    if(rightNode < n && list[rightNode] < list[largest]) {
      largest = rightNode;
    }
    
    if (largest != i) {
      int swap = list[i];
      list[i] = list[largest];
      list[largest] = swap;
      heapify(list, n, largest);
    }
  }

  void sort(List list) {
    int n = list.length;
    
    for(int i = n ~/ 2 - 1; i >= 0; i--) {
       heapify(list, n, i);
    }
    for(int i = n - 1; i >= 0; i--) {      
        int temp = list[0];
        list[0] = list[i];
        list[i] = temp;
        heapify(list, i, 0);
    }
}
