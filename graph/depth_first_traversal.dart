void main() {
  Graph g = Graph(4);
    g.addEdge(0, 1); 
    g.addEdge(0, 2);
    g.addEdge(1, 2);
    g.addEdge(2, 0);
    g.addEdge(2, 3);
    g.addEdge(3, 3);
    print("Following is Depth First Traversal"); 
    g.dfs();
}

class Graph {
  int V;
  List adj;
  
  Graph(int v) {
    V = v;
    adj = List(v);
    for(int i = 0; i < v; i++) {
      adj[i] = List();
    }
  }

  void addEdge(int v, int w) {
    adj[v].add(w);
  }

  void dfsUtil(int v, List<bool>visited) {
    visited[v] = true;
    print(v);
    
    for(int i = 0; i < v; i++) {
      if(!visited[i]) {
        dfsUtil(i, visited);
      }
    }
  }
  
  void dfs() {
    List<bool> visited = List<bool>.filled(V, false);
     for(int i = 0; i < V; i++) {
      if(visited[i] == false) {
        dfsUtil(i, visited); 
      }
    }
  }
}
