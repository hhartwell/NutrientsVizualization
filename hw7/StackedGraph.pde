/**
* TODO needs to be tested and debugged
* class that will be used to make a stacked bar chart
* child class of Graph
*/
public class StackedGraph extends Graph{
  protected ArrayList<StackedBar> bars;
  
  /**
  * public constructor
  * @param int x - x position that the origin of the graph will be placed
  * @param int y - y position that the origin of the graph will be placed
  * @param int xAxisLength - length of the x axis
  * @param int yAxisLength - length of the y axis
  * @param ArrayList<ArrayList<Integer> categoryValues - two dimensional Integer array for the data points in the graph. The first level represents each bar, and the second level represents each bars values
  * @param String[] categories  - names for each element in the bar chart
  */
  public StackedGraph(int x, int y, int xAxisLength, int yAxisLength, ArrayList<ArrayList<Integer>> categoryValues, ArrayList<String> categories){
    super(x, y, xAxisLength, yAxisLength, 0, 100, categoryValues, categories);
    //System.out.println(categoryValues.toString());
    this.bars = buildBars(categoryValues);
  }
  /**
  * helper function used to build the stacked bars.
  * @param ArrayList<Integer> barValues - values for each bar
  * @return ArrayList<StackedBar> - returns an ArrayList of type StackedBar
  */
  @Override
  protected ArrayList buildBars(ArrayList barValues){
    translate(x, y);
    ArrayList<StackedBar> newBars = new ArrayList<StackedBar>();
    ArrayList<ArrayList<Integer>> arr = barValues;
    color c1 = (0);
    color c2 = (255);
    for (int i = 0; i < barValues.size(); i++){
      int barX = xAxisScale*i+(xAxisScale/2);
      int barWidth = 40;
      newBars.add(new StackedBar(barX, 0, barX + x, y, barWidth, c1, c2, arr.get(i)));
    }
    translate(-x, -y);
    return newBars;
  }
  /**
  * heper function used to place the bars in the graph
  */
  @Override
  protected void placeBars(){
    for(int i = 0; i < this.bars.size(); i++){
      this.bars.get(i).drawBar();
    }
  }
  /**
  * function used to draw the full graph
  */
  @Override
  public void drawGraph(){
    translate(x, y);
    drawAxis();
    placeBars();
    //System.out.println("its running");
    translate(-x, -y);
  }
}