/**
* class responsible for figuring out which era has been selected and what to do with that information
* Specifically the class needs to communicate with the instance of the timeline, and then draw the correct graph based on that information
*
*/
public class NutrientManager {
private Table nutrients;
timelineX, timelineY, xAxisLength
  /**
  * public constructor
  */
  public NutrientManager(){
    nutrients = loadTable("nutrients.csv");
  //    String[] arr = {"word", "word2", "word3"};
  //ArrayList<ArrayList<Integer>> stackedArr = new ArrayList<ArrayList<Integer>>();
  //for (int i = 1; i < 5; i++){
  //  vals = new ArrayList<Integer>();
  //  vals.add(15*i);
  //  vals.add(7*i);
  //  vals.add(70/i);
  //  stackedArr.add(vals);
  //    int pad = 50;
  
  //// placement of the graph
  //    int x = pad;
  //    int y = 3*height/4 -pad;
  
  // dimensions of the graph
  //int xAxisLength = width-pad*2;
  //int yAxisLength = 3*height/4 - pad*2;
  //stackedGraph = new StackedGraph(x, y, xAxisLength, yAxisLength, stackedArr, arr);
  }
    
  }
  /**
  * function used to draw the graph based on the information provided by the Timeline object
  */
  public void drawGraph(){
    //get era
    timeline.getEraSelected();
    
    
    
    
      for (TableRow row : nutrients.rows()){
        println(row.getInt(0));//year
       
     
      }
     
  }
   
  //function to average year values
  public int averageValue(){
  return 1;
  }
  //function to take timeline parameters
  
  /**
  * function used to update information in this class based on the Timeline object
  */
  public void updateManager(){
    
  }
  
}