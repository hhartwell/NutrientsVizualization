// Harvey Hartwell
// Danielle Forrest
Graph graph;

void setup(){
  size(700, 400);
  colorMode(HSB);
  String[] arr = {"word", "word2", "word3"};
  ArrayList<Integer> vals = new ArrayList<Integer>();
  vals.add(40);
  vals.add(70);
  vals.add(25);
  int pad = 50;
  
  // placement of the graph
  int x = pad;
  int y = height-pad;
  
  // dimensions of the graph
  int xAxisLength = width-pad*2;
  int yAxisLength = height - pad*2;
  
  
  graph = new Graph(x, y, xAxisLength, yAxisLength, 0, 100, vals, arr);
}
void draw(){
  background(200);
  graph.drawGraph();
}