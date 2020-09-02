void main() {

    interpolationSearch();
}  

 List interpolationSearch(){
    List list = [5,10,15,20,25,30,35,40,45,50,55];
   int search = 55;
   int low = 0;
   int high = list.length-1;
   double mid = 0;
   int numberTry = 0;
   bool isfound = false;
   
   while(!isfound){
     if(low > high){
       print('number not found');
        break;
     }
     mid = low + ((high - low) / (list[high] - list[low])) * (search - list[low]);
        numberTry++;
      if(list[mid.toInt()] > search){
        high = mid.toInt() - 1 ;
      } else if(list[mid.toInt()] < search) {
        low = mid.toInt() + 1;
      } else if (list[mid.toInt()] == search) {
        print ('number is found');
        print('find after number of try $numberTry');
        break;
      }
    }
  }
