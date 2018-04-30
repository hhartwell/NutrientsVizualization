/**
* class used to build and display a simple Bar Chart graph
*/
public class Graph{
  // TODO: Maybe rename this class? idk 
 
  // position of the graph
  // to be used with translate
  protected int x;
  protected int y;
  
  // hard values for the graph
  protected int yMin;
  protected int yMax;
  
  protected int xAxisLength;
  protected int yAxisLength;
  protected int xAxisScale;
  protected int yAxisScale;
  
  StringList categories;
  ArrayList<Bar> bars;
  
  int padding;
  
  /**
  * public Constructor
  * @param int x - x position that the origin of the graph will be placed
  * @param int y - y position that the origin of the graph will be placed
  * @param int xAxisLength - length of the x axis
  * @param int yAxisLength - length of the y axis
  * @param int yMin - lower bound of the y axis
  * @param int yMax - upper bound of the y axis
  * @param ArrayList<Integer> categoryValues - values for the elements in the bar chart
  * @param String[] categories  - names for each element in the bar chart
  */
  public Graph(int x, int y, int xAxisLength, int yAxisLength, int yMin, int yMax, ArrayList categoryValues, String ... categories){
    this.x = x;
    this.y = y;
    
    this.yMin = yMin;
    this.yMax = yMax;
    
    
    this.categories = new StringList();
    for (int i = 0; i < categories.length; i++){
      this.categories.append(categories[i]);
    }
    
    // set x axis lenght and scale
    // x scale is defined categorically
    //   according to the number of data points to be displayed
    this.xAxisLength = xAxisLength;
    this.xAxisScale = xAxisLength / this.categories.size();
    
    // set y axis length and scale
    // y scale is defined continuously
    //   according to the yMax and yMin values
    this.yAxisLength = yAxisLength;
    this.yAxisScale = yAxisLength / (yMax - yMin);
    
    this.bars = buildBars(categoryValues);
    //System.out.println(categoryValues);
  }
  /**
  * funtion used to build instances of the bars
  * @param  categoryValues - numerical values for each bar
  * @return bars - returns an ArrayList of type Bar based on the category values
  */
  protected ArrayList buildBars(ArrayList categoryValues){
    ArrayList<Bar> bars = new ArrayList<Bar>();
    color c = color(180, 50, 50);
    for(int i = 0; i < categoryValues.size(); i++){
      // dimensions for the bars
      int barX = xAxisScale*i+(xAxisScale/2);
      int barY = (int) categoryValues.get(i)*yAxisScale;
      int barWidth = 40;
      int barHeight = -(int)categoryValues.get(i)*yAxisScale;
      bars.add(new Bar(barX, 0, x + barX, y, barWidth, barHeight, c));
      //System.out.println(bars.get(i));
    }
    return bars;
  }
  
  /**
  * funciton responsible for drawing all parts of the graph including axis and bars
  */
  public void drawGraph(){
    // TODO: need to impliment a way to display the graph title
    translate(x, y);
    drawAxis();
    for (int i = 0; i < bars.size(); i++){
      bars.get(i).drawBar();
    }
    translate(-x, -y);
  }
  /**
  *helper function responsible for drawing the x and y axis and increment them
  */
  protected void drawAxis(){
    line(0, 0, xAxisLength, 0);
    line(0, 0, 0, -yAxisLength);
    incrementXAxis();
    incrementYAxis();
  }
  /**
  * helper function that increments the x axis and labels each increment
  */
  private void incrementXAxis(){
    int offset = xAxisScale/2;
    for (int i = 0; i < categories.size(); i++){
      line (xAxisScale*i+offset, 5, xAxisScale*i+offset, -5);
      int posX = xAxisScale*i+offset;
      int posY = 10;
      pushMatrix();
      translate(posX, posY);
      rotate(7*PI/4);
      textAlign(RIGHT, CENTER);
      text(categories.get(i), 0, 0);
      rotate(-7*PI/4);
      translate(xAxisScale*i+offset, -5);
      popMatrix();
    }
  }
  /**
  * helper function responsible for incrementing the y axis and lable them
  */
  private void incrementYAxis(){ 
    int increment = 10;
    for (int i = 1; i <= yMax-yMin; i++){
      if(i%increment == 0){
        line (5, -yAxisScale*i, -5, -yAxisScale*i);
        text(i, -20, -yAxisScale*i);
      }
    }
  }
  /**
  * helper function that exists purley for child class purposes
  * This function is not implimented in this class
  */
  protected void placeBars(){ 
    for (int i = 0; i < bars.size(); i++){
      bars.get(i).drawBar();
    }
  }
}