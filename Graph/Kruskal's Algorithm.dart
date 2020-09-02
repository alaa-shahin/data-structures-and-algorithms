void main() {

  int E = 5;
  int V = 4;
  Graph graph = Graph(V, E);
  graph.edge[0].src = 0; 
  graph.edge[0].dest = 1; 
  graph.edge[0].cost = 10;

  graph.edge[1].src = 0; 
  graph.edge[1].dest = 2; 
  graph.edge[1].cost = 6; 
  
  graph.edge[2].src = 0; 
  graph.edge[2].dest = 3; 
  graph.edge[2].cost = 5; 
  
  graph.edge[3].src = 1; 
  graph.edge[3].dest = 3; 
  graph.edge[3].cost = 15; 
  
  graph.edge[4].src = 2; 
  graph.edge[4].dest = 3; 
  graph.edge[4].cost = 4;
  
  graph.kruskal(); 
}

class Graph{
  int V, E;
  List<Edge> edge;
  
  Graph(int v, int e){
    V = v;
    E = e;
    edge = List<Edge>(E);
    for(int i = 0; i < e; i++){
      edge[i] = Edge();
    }
  }
  
  int find(List<Subset>subset, int i){
    if(subset[i].parent != i){
      subset[i].parent = find(subset, subset[i].parent); 
    }
    return subset[i].parent; 
  }
  
  void union(List<Subset>subset, int x, int y){
    int xroot = find(subset, x); 
    int yroot = find(subset, y);
   if (subset[xroot].rank < subset[yroot].rank){
         subset[xroot].parent = yroot; 
   } else if(subset[xroot].rank > subset[yroot].rank){
         subset[yroot].parent = xroot; 
   } else {
     subset[yroot].parent = xroot; 
     subset[xroot].rank++; 
   }
  }
  
  void kruskal(){
    List<Edge> result = List<Edge>(V);
    int e = 0;
    int i = 0;
    for(i = 0; i < V; i++){
      result[i] = Edge();
    }
    List<Subset>subset = List<Subset>(V);
     for(i = 0; i < V; i++){
       subset[i]= Subset();
     }
     for (int v = 0; v < V; v++) { 
       subset[v].parent = v; 
       subset[v].rank = 0;
     }
      i = 0;
     while (e < V - 1) {
       Edge nextEdge = new Edge(); 
       nextEdge = edge[i++]; 
       int x = find(subset, nextEdge.src); 
       int y = find(subset, nextEdge.dest);
        if (x != y) {
          result[e++] = nextEdge; 
          union(subset, x, y); 
        } 
     }
     for(i = 0; i < e; i++){
      print('${result[i].src} ------ ${result[i].dest} == ${result[i].cost}');
    }
  }
}

class Edge {
  int src, dest, cost; 
  int compareTo(Edge compareEdge){
    return cost - compareEdge.cost; 
   }
}

class Subset{
  int parent, rank; 
}
