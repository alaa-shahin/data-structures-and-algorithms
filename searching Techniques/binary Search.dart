void main() {

    binarySearch();
}  

 List binarySearch(){
    List list = [5,10,15,20,25,30,35,40,45,50,55];
   int search = 45;
   int low = 0;
   int high = list.length-1;
   int mid = 0;
   int numberTry = 0;
   bool isfound = false;
   
   while(!isfound){
     if(low > high){
       print('number not found');
        break;
     }
     
       mid = low + ((high - low)~/2);
        numberTry++;
     if(list[mid] > search){
        high = mid - 1 ;
     } else if(list[mid] < search) {
        low = mid + 1;
     } else if (list[mid] == search) {
        print ('number is found');
        print('find after number of try $numberTry');
         break;
     }
   }
 }
