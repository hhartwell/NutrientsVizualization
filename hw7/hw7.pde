// Harvey Hartwell
// Danielle Forrest

// TODO: cycle through decades
// TODO: timeline class
// TODO: nutrient manager class
<<<<<<< HEAD

=======
import java.utils.
Graph stackedGraph;
Graph graph;
>>>>>>> 243f396ad83dcc3f14fbeb5b85e6c50fa3032635

NutrientManager nutrientManager;
ArrayList<Integer> vals;
Timeline timeline;
void setup(){
  size(700, 700);
  
  
  int timelineX = x + pad;
 nutrientManager = new NutrientManager();   //colorMode(HSB);

  
  int pad = 50;
  
  // placement of the graph
  int x = pad;
  int y = 3*height/4 -pad;
  
  // dimensions of the graph
  int xAxisLength = width-pad*2;
  int yAxisLength = 3*height/4 - pad*2;
  
  //System.out.println(vals.toString());
  
  
  graph = new Graph(x, y, xAxisLength, yAxisLength, 0, 100, stackedArr.get(0), arr);
int timelineY = height - height/4;
  
  timeline = new Timeline(timelineX, timelineY, xAxisLength);
  nutrientManager = new Nutrien);

  timeline.drawEraBars();
  
}
void mouseClicked(){
  timeline.setSelected();
}