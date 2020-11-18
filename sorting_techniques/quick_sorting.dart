void main() {	 
  List a =[7,6,10,5,9,2,1,15,7,0];
  quickSort(a, 0, a.length - 1);
  print(a); 
}

void quickSort(List list, int low, int high) {
  if(low >= high) {
    return;
  }
  int mid = low + (high - low)~/2;
  int pivot = list[mid];
  int i = low;
  int j = high;
  
  while(i <= j) {
    while(list[i] < pivot) {
      i++;
    }
    while(list[j] > pivot) {
      j--;
    }
    if(i <= j) {
      int temp1 = list[i];
      list[i] = list[j];
      list[j] = temp1;
      i++;
      j--;
    }
  }
  if(low < j) {
    quickSort(list, low, j);
  }
  if(high > i) {
    quickSort(list, i, high);
  }
}
