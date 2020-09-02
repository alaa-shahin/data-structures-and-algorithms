import 'dart:collection';
void main() {
  
  Graph g = Graph(4);
    g.addEdge(0, 1); 
    g.addEdge(0, 2);
    g.addEdge(1, 2);
    g.addEdge(2, 0);
    g.addEdge(2, 3);
    g.addEdge(3, 3);
    print("Following is Breadth First Traversal "+"(starting from vertex 2)"); 
    g.bfs(2);
}

class Graph {
  int V;
  List adj;
  
  Graph(int v){
    V = v;
    adj = List(v);
    for(int i = 0; i < v; i++){
      adj[i] = List();
    }
  }

  void addEdge(int v, int w){
    adj[v].add(w);
  }

  void bfs(int s){
    List<bool> visited = List<bool>.filled(V, false);
    Queue list = Queue();
    visited[s] = true;
    list.addFirst(s);
    while(list.length != 0){
      s = list.removeFirst();
      print(s);
      for(int i = 0; i < V; i++){
        if(!visited[i]){
          visited[i] = true;
          list.add(i);
        }
      }
    }  
  }
}
