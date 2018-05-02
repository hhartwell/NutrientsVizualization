
/**
* class responsible for figuring out which era has been selected and what to do with that information
* Specifically the class needs to communicate with the instance of the timeline, and then draw the correct graph based on that information
*
*/
public class NutrientManager {
private Table nutrients;
Graph stackedGraph;
Graph graph;
private int x, y,timelineX, timelineY ;
private int xAxisLength, yAxisLength; 
private ArrayList<Integer> nutValues;
private ArrayList<String> nutCategories;
private ArrayList<String> macroArr;
float span;
  /**
  * public constructor
  */
  public NutrientManager(int newX, int newY, int newXAxisLength, int newYAxisLength, int newTimelineX, int newTimelineY){
    nutrients = loadTable("nutrients.csv");
    nutValues = new ArrayList<Integer>();
    nutCategories = new ArrayList<String>();
    macroArr = new ArrayList<String>();
    macroArr.add("Calories");
    macroArr.add("Carbohydrates");
    macroArr.add("Protein");
    macroArr.add("Fat");
    x = newX;
    y = newY;
    xAxisLength = newXAxisLength;
    yAxisLength = newYAxisLength;
    timelineX = newTimelineX;
    timelineY = newTimelineY;
    graph = new Graph(x, y, xAxisLength, yAxisLength, 0, 100, nutValues, timeline.eras);
  //    String[] arr = {"word", "word2", "word3"};
  //ArrayList<ArrayList<Integer>> stackedArr = new ArrayList<ArrayList<Integer>>();
  //for (int i = 1; i < 5; i++){
  //  vals = new ArrayList<Integer>();
  //  vals.add(15*i);
  //  vals.add(7*i);
  //  vals.add(70/i);
  //  stackedArr.add(vals);
 

  //stackedGraph = new StackedGraph(x, y, xAxisLength, yAxisLength, stackedArr, arr);
    drawKCalGraph();
    drawMacroEraGraph();
  }
    
  
  /**
  * function used to draw the graph based on the information provided by the Timeline object
  */
  public void drawGraph(){
    graph = new Graph(x, y, xAxisLength, yAxisLength, 0, 50, nutValues, nutCategories);
    graph.drawGraph();
 }
 
   public void drawKCalGraph(){
     nutValues = new ArrayList<Integer>();
     nutCategories = timeline.eras;
     for(int i = 0; i < timeline.allEras.size(); i ++){
      nutValues.add(averageValue(timeline.allEras.get(i), 1)/100);
      println("Era number = " + timeline.allEras.get(i));
     }
    println(nutValues.toString());
    
   }
     public void drawMacroEraGraph(){
       int era ;
       nutCategories = macroArr;
       if(timeline.getEraSelected() != -1){
        era = timeline.getEraSelected();
       }else
       era = 0;
     nutValues = new ArrayList<Integer>();
     for(int i = 1; i < 5; i ++){
      nutValues.add(averageValue(era, i)/100);
     }
    println(nutValues.toString());
    
   }
  //function to average year values
  //How to get nutrients from specific span from table
  public int averageValue(int era, int nut){
    int startYear, startTabNum;
    int average = 0;
    if(era != -1){
      span = timeline.spans.get(era);//get span of era
      startYear = timeline.eraYears.get(era);//get starting year of era selected
      startTabNum = startYear - 1908;
      
    }else{
      println("error in timeline.spans");
      span = 0;
      startYear = 0;//get starting year of era selected
      startTabNum = 0;
      println(timeline.spans.get(0));
    }
    
    for (int i = startTabNum; i < (startTabNum +span) ; i++){
        average += nutrients.getRow(i).getInt(nut);
    }
    if (span != 0){
   average = average/(int)span;
    }
   return average;
  }
  //function to take timeline parameters
  
  /**
  * function used to update information in this class based on the Timeline object
  */
  public void updateManager(){
    //this.drawGraph();
    
  }
  
}