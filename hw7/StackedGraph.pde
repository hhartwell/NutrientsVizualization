/**
* TODO needs to be tested and debugged
* class that will be used to make a stacked bar chart
*/

public class StackedGraph extends Graph{
  protected ArrayList<StackedBar> bars;
  
  public StackedGraph(int x, int y, int xAxisLength, int yAxisLength, ArrayList<ArrayList<Integer>> categoryValues, String ... categories){
    super(x, y, xAxisLength, yAxisLength, 0, 100, categoryValues, categories);
    this.bars = buildStackedBars(categoryValues);
  }
  private ArrayList<StackedBar> buildStackedBars(ArrayList<ArrayList<Integer>> barValues){
    ArrayList<StackedBar> bars = new ArrayList<StackedBar>();
    color c1 = (0);
    color c2 = (255);
    for (int i = 0; i < barValues.size(); i++){
      int barX = xAxisScale*i+(xAxisScale/2);
      int barY = barValues.size();
      int barWidth = 40;
      bars.add(new StackedBar(barX, 0, barWidth, yAxisScale, c1, c2, barValues.get(i)));
    }
    return bars;
  }
  @Override
  protected ArrayList buildBars(ArrayList barValues){
    ArrayList<StackedBar> bars = new ArrayList<StackedBar>();
    ArrayList<ArrayList<Integer>> arr = barValues;
    color c1 = (0);
    color c2 = (255);
    for (int i = 0; i < barValues.size(); i++){
      int barX = xAxisScale*i+(xAxisScale/2);
      int barY = barValues.size();
      int barWidth = 40;
      bars.add(new StackedBar(barX, 0, barWidth, yAxisScale, c1, c2, arr.get(i)));
    }
    return bars;
  }
  @Override
  protected void placeBars(){
    for(int i = 0; i < this.bars.size(); i++){
      this.bars.get(i).drawBar();
    }
  }
}