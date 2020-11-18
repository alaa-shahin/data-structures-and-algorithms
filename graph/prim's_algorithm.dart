void main() {
  MST t = MST();
  List<List> graph = [[0, 2, 0, 6, 0],[ 2, 0, 3, 8, 5],[0, 3, 0, 0, 7],[ 6, 8, 0, 0, 9],[ 0, 5, 7, 9, 0]]; 
  t.primMST(graph);
}

class MST {
  int V = 5;
  
  int minKey(List key, List<bool>mstSet) {
  int maxInt    = 4294967296;
  int minIndex  = -1;
    for(int v = 0; v < V; v++) {
      if(mstSet[v] == false && key[v] < maxInt) {
        maxInt = key[v];
        minIndex = v;
      }
    }
    return minIndex;
  }
  
  void printMST(List parent, List<List>graph) {
    print(" Edge    Cost");
    int i;
    for(i = 1; i < V; i++) {
      print('${parent[i]} => $i   =  ${graph[i][parent[i]]}');
    }
  }
  
  void primMST(List<List>graph) {
    List parent = List(V);
    List key    = List(V);
    List<bool> mstSet = List(V);
     for (int i = 0; i < V; i++) {
        key[i] = 4294967296;
        mstSet[i] = false;
     }
    key[0] = 0;
    parent[0] = -1;
    for (int count = 0; count < V - 1; count++) {
      int u = minKey(key, mstSet);
      mstSet[u] = true;
      for (int v = 0; v < V; v++) {
        if (graph[u][v] != 0 && mstSet[v] == false && graph[u][v] < key[v]) {
          parent[v] = u;
          key[v] = graph[u][v];
        }
      }
    }
    printMST(parent, graph);
  }
}
