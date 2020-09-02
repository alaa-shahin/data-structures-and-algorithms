void main() {

  Node root = Node(7, null, null);
  Bst b1 = Bst(root);
  for (int i = 1; i < 10; i++){
    Node new1 = Node(i, null, null);
    b1.add(new1, b1.root);
  }
    b1.search(9, b1.root);
}

class Bst {

  Node root;
  Bst(this.root);  

  void add (Node newNode, Node root){
    if(root == null){
      return;
    }
    if (newNode.value > root.value){
      if(root.right == null){
      root.right = newNode;
      } else { 
        add(newNode, root.right);
      }
    }
      if (newNode.value < root.value){
        if(root.left == null){
          root.left = newNode;
        } else {
          add(newNode, root.left);
       }
     } 
   }  

  void search (int value, Node root){
    if(root == null){
       print('num is not found');
       return;
    }
    if(root.value == value){
      print('num is found');
      return;
    }
    if (value > root.value){
        search(value, root.right);
    }
    if (value < root.value){
       search(value, root.left);
    }
  }
 }

class Node {
  int value;
  Node left;
  Node right;

  Node(this.value, this.left, this.right);
}
