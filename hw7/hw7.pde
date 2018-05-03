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
  size(700, 900);
  int pad = 50;
  
  // placement of the graph
  int x = pad;
  int y = 3*height/4 -pad;
  
  // dimensions of the graph
  int xAxisLength = width-pad*2;
  int yAxisLength = 3*height/4 - pad*2;
  
  int timelineX = x + pad;
  int timelineY = height - height/5;
  
  timeline = new Timeline(timelineX, timelineY, xAxisLength);
  nutrientManager = new NutrientManager(x, y, xAxisLength, yAxisLength, timelineX, timelineY);
}
void draw(){
  background(200);
 
  timeline.drawEraBars();
  nutrientManager.drawGraph();
  
}
void mouseClicked(){
  timeline.setSelected();
  nutrientManager.updateManager();
}