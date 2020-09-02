void main() {	 
	 CircularLinkedList cll = CircularLinkedList();
  cll.addNode(5); 
  cll.addNode(10);
  cll.addNode(15);
  cll.addNode(20);
  cll.show();
  print('-------------');
  cll.deleteNode(5);
  cll.show();
}

class Node {
	 
   int value;
	 Node nextNode;
	 
	 Node(int value) {
	   this.value = value;
	 }
}

class CircularLinkedList {
 Node head;
 Node tail;
  
  void addNode(int value) {
	    Node newNode = new Node(value);
	 
	    if (head == null) {
	        head = newNode;
	    } else {
	        tail.nextNode = newNode;
	    }
	 
	    tail = newNode;
	    tail.nextNode = head;
	}
  
  void deleteNode(int valueToDelete) {
	    Node currentNode = head;
      Node temp = head, previous=null;
	 
	    if (head != null) {
	        if (currentNode.value == valueToDelete) {
	            head = head.nextNode;
	            tail.nextNode = head;
	        } else {
	            do {
	                Node nextNode = currentNode.nextNode;
	                if (nextNode.value == valueToDelete) {
	                    currentNode.nextNode = nextNode.nextNode;
	                    break;
	                }
	                currentNode = currentNode.nextNode;
	            } while (currentNode != head);
	        }
	    }
	}
 
  void show(){
    
    Node head = tail.nextNode;
    while(head != tail){
        print(head.value);
        head = head.nextNode;
      if(head == tail.nextNode){
          break;
      }
    }
    print(head.value);
  }
}


