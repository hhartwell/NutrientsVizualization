// Harvey Hartwell
// Danielle Forrest

// TODO: cycle through decades
// TODO: timeline class
// TODO: nutrient manager class

Graph graph;
ArrayList<Integer> vals;
Timeline timeline;
void setup(){
  size(700, 400);
  colorMode(HSB);
  String[] arr = {"word", "word2", "word3"};
  ArrayList<ArrayList<Integer>> stackedArr = new ArrayList<ArrayList<Integer>>();
  for (int i = 1; i < 5; i++){
    vals = new ArrayList<Integer>();
    vals.add(15*i);
    vals.add(7*i);
    vals.add(70/i);
    stackedArr.add(vals);
    
  }
  int pad = 50;
  
  // placement of the graph
  int x = pad;
  int y = height-pad;
  
  // dimensions of the graph
  int xAxisLength = width-pad*2;
  int yAxisLength = height - pad*2;
  
  System.out.println(vals.toString());
  graph = new StackedGraph(x, y, xAxisLength, yAxisLength, stackedArr, arr);
  timeline = new Timeline(x, xAxisLength);
}
void draw(){
  background(200);
  //StackedBar bar = new StackedBar(50, 200, 50, 50, color(255), color(255), vals);
  //bar.drawBar();
  //timeline.createTimeline(xAxisLength);
  timeline.createTimeline();
  graph.drawGraph();
  
  
  
}