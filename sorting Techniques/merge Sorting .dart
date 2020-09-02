void main() {	 
  List list1 = [5,6,48,62,48,61,0,14,2,3,5];
 mergeSotr(list1, 0, 10);
  print(list1);
}

  void merge(list, low, mid, high){
    int i = low;
    int j = mid+1;
    int k = low;
    List listSorted = List(11); 
    
      while(i <= mid && j <= high){
        if(list[i] <= list[j]){
         listSorted[k] = list[i];
          i++;
        } else {
          listSorted[k] = list[j];
          j++;
        }
        k++;
      }
    
      if(i > mid){
        while(j <= high){
          listSorted[k] = list[j];
          j++; k++;
        }
      } else{
        while(i <= mid){
          listSorted[k] = list[i];
          i++; k++;
        }
      }
    
      for(k = low; k <= high; k++){
        list[k] = listSorted[k];
      }
  }

  void mergeSotr(List list, int low, int high){
    if(low < high){
      int mid = (low + high)~/2;
      mergeSotr(list, low, mid);
      mergeSotr(list, mid + 1, high);
      merge(list, low, mid, high);
    }
  }
