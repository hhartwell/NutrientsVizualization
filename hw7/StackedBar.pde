import java.util.Collections;
public class StackedBar extends Bar{
  
  protected ArrayList<Float> barVals;
  protected LABColor lc2;
  protected int yScale;
  
  public StackedBar(int x, int y, int barWidth, color c1, color c2, ArrayList<Integer> barVals){
    super(x, y, barWidth, 100, c1);
    this.barVals = normalizeAllValues(barVals);
    this.lc2 = new LABColor(c2);
    this.yScale = yScale;
  }
  private ArrayList<Float> normalizeAllValues(ArrayList<Integer> values){
    ArrayList<Float> normalized = new ArrayList<Float>();
    int min = Collections.min(values);
    int max = Collections.max(values);
    for (int i = 0; i < values.size(); i++){
      normalized.add(normalize(values.get(i), max, min));
      
    }
    System.out.println(normalized.toString());
    System.out.println(values.toString());
    //System.out.println(min);
    //System.out.println(max);
    return normalized;
  }
  private float normalize(int x, int max, int min){
    float a = (float) x;
    float b = (float) max;
    float c = (float) min;
    System.out.println((a-0)/(100-0));
    return (a-c)/(b-c);
  }
  
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
      System.out.println();
    }
    
    translate(-x, -y);
  }
}