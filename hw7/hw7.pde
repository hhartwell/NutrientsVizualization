// Harvey Hartwell
// Danielle Forrest

// TODO: cycle through decades
// TODO: timeline class
// TODO: nutrient manager class

Graph stackedGraph;
Graph graph;
NutrientManager nutrientManager;

ArrayList<Integer> vals;
Timeline timeline;
void setup(){
  size(700, 700);
  //colorMode(HSB);
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
  int y = 3*height/4 -pad;
  
  // dimensions of the graph
  int xAxisLength = width-pad*2;
  int yAxisLength = 3*height/4 - pad*2;
  
  //System.out.println(vals.toString());
  //stackedGraph = new StackedGraph(x, y, xAxisLength, yAxisLength, stackedArr, arr);
  
  //graph = new Graph(x, y, xAxisLength, yAxisLength, 0, 100, stackedArr.get(0), arr);
  
  int timelineX = x + pad;
  int timelineY = height - height/4;
  
  timeline = new Timeline(timelineX, timelineY, xAxisLength);
  nutrientManager = new NutrientManager(x, y, xAxisLength, yAxisLength, timelineX, timelineY);
}
void draw(){
  background(200);
  //StackedBar bar = new StackedBar(50, 200, 50, 50, color(255), color(255), vals);
  //bar.drawBar();
  //graph.drawGraph();
  
  //timeline.createTimeline();
  timeline.drawEraBars();
  nutrientManager.drawGraph();
  
}
void mouseClicked(){
  timeline.setSelected();
}