void main() {
  linearSearch();
}  

List<int> linearSearch() {
 List<int> list = [5,10,15,20,25,30,35,40,45,50];
  int search = 25;
  int numberTry = 0;
  for (int i = 0; i < list.length; i++) {
    numberTry++;
    if (search == list[i]) {
      print('number is found');
      print('find after number of try $numberTry');
    } 
  }
}
