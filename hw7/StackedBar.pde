import java.util.Collections;

/**
* class used to create a stacked bar 
* child of the Bar class
*/
public class StackedBar extends Bar{
  
  protected ArrayList<Float> barVals;
  protected LABColor lc2;
  protected int yScale;
  
  /**
  * public contructor
  * @param int x - x position of the bar
  * @param int y - y position of the bar
  * @param int barWidth - width of the bar
  * @param color c1 - color for the bottom bar (used in some linear interpolation)
  * @param color c2 - color for the top bar (used in some linear interpolation)
  * @param ArrayList<Integer> barVals - integer value for each bar in the stacked bar
  */
  public StackedBar(int x, int y, int xActual, int yActual, int barWidth, color c1, color c2, ArrayList<Integer> barVals){
    super(x, y, xActual, yActual, barWidth, 100, c1);
    this.barVals = normalizeAllValues(barVals);
    this.lc2 = new LABColor(c2);
    this.yScale = yScale;
  }
  /**
  * helper function used to normalize the values in the bar
  * @param ArrayList<Integer> values - values of each bar
  * @return ArrayList<Float> normalized - normalized values for each value in the bar currently on a scale of 0-1 I think. I could be wrong.
  */
  private ArrayList<Float> normalizeAllValues(ArrayList<Integer> values){
    //TODO: need to do further testing on this function to make sure that the values are being normalized correctly
    ArrayList<Float> normalized = new ArrayList<Float>();
    int min = Collections.min(values);
    int max = Collections.max(values);
    for (int i = 0; i < values.size(); i++){
      normalized.add(normalize(values.get(i), max, min));
      
    }
    //System.out.println(normalized.toString());
    //System.out.println(values.toString());
    //System.out.println(min);
    //System.out.println(max);
    return normalized;
  }
  /**
  * helper function to normalize a single value on a scale from 0-1
  * @param int x - value to be normalized
  * @param int max - max value in the bar values
  * @param int min - min value in the bar values
  * @return float - normalized value
  */
  private float normalize(int x, int max, int min){
    float a = (float) x;
    float b = (float) max;
    float c = (float) min;
    //System.out.println((a-0)/(100-0));
    return (a-c)/(b-c);
  }
  /**
  * function to draw the bar
  */
  @Override
  public void drawBar(){
    translate(x, y);
    int xStart = -barWidth/2;
    int yStart = 0;
    for (int i = 0; i < barVals.size(); i++){
      fill(lc.lerp(lc2, (float) i/ (float) barVals.size()).rgb);
      int barSize = (int) (barVals.get(i)*yScale);
      rect(xStart, yStart, barWidth, -barSize);
      yStart -= barSize;
      //System.out.println();
    }
    
    translate(-x, -y);
  }
}