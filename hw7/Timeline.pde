/**
WWI- 1914-1921
great depression 1929-1938
WWII- 1939–1945
Korean War 1950-1953
Vietnam War 1955-1975
Moon Landing 1969
Desert Storm 1990-1991
*/
public class Timeline{
 final String progressive = "Progressive Era";//1909-1913
  final float progSpan = 4;
  final String WWI = "World War I";//1914-1919 added year to avoid gap in data
  final float WWISpan = 5;
  final String twenties = "Roaring Twenties";//1920-1928
  final float twentySpan = 8;
  final String depression = "Great Depression";//1929-1938
  final float depressSpan = 9;
  final String WWII = "World War II";//1939-1945
  final float WWIISpan = 6;
  final String boom = "Post-War Boom";//1946-1959
  final float boomSpan = 13;
  final String vietnam = "Vietnam War";//1960-1975
  final float vietnamSpan = 15;
  final String infoAge = "Information Age";//1976-2010
  final float infoSpan = 32;
  
  private ArrayList<Float> spans;
  private ArrayList<String> eras;
  private ArrayList<EraBar> eraBars;
  
  private float start;
  private float end;
  private float pad;
  private float scale;
  private float currSpan;
  private float startSpan;
  
  // x and y coords for the timeline
  private int x, y, xActual, yActual;
  
  // colors
  private LABColor c1;
  private LABColor c2;
  /**
  * public constructor
  * @param int x - x placement for the timeline
  * @param int y - y placement for the timeline
  * @param int xAxis - length of the timeline
  */
  public Timeline(int x, int y, int xAxis){
    this.x = x;
    this.y = y;
    start = x;
    pad = x;
    end = xAxis;
    scale = end/100;
    currSpan = 0;
    c1 = new LABColor(color(255, 0, 0));
    c2 = new LABColor(color(0, 0, 255));
    createEraBars();
  }
  
  /**
  * function responsible for creating the timeline
  */
  public void createTimeline(){
    startSpan = start;
    fill(c1.rgb);
    
    //progressive era
    setBar(progressive, progSpan);
     
    //WWI
    fill(c2.rgb);
    setBar(WWI, WWISpan);
    
    //Roaring Twenties
    fill(c1.rgb);
    setBar(twenties, twentySpan);
    
     //Great Depression
    fill(c2.rgb);
    setBar(depression, depressSpan);
    
    //WWII
    fill(c1.rgb);
    setBar(WWII, WWIISpan);
    
    //Post-War Boom
    fill(c2.rgb);
    setBar(boom, boomSpan);
    
    //Vietnam War
    fill(c1.rgb);
    setBar(vietnam, vietnamSpan);
    
    //information age
    fill(c2.rgb);
    setBar(infoAge, infoSpan);
    
    strokeWeight(2);
    line(pad, 0, pad, 20);
    line(pad, 10, end, 10);
    line(end, 0, end, 20);
  }
  
  /**
  * helper function used to create each era and name it
  * @param String eraName
  * @param float eraSpan
  */
  private void setBar(String eraName, float eraSpan){
    rect(startSpan, 2, eraSpan * scale, 16);
    startSpan += eraSpan * scale;
    pushMatrix();
    translate(startSpan, -startSpan + 100);
    rotate(20);
    textAlign(RIGHT, CENTER);
    text(eraName, startSpan, 30);
    popMatrix();
  }
  
  /**
  * public function used to retrieve the currently selected nutrient
  * Kilo = 0;
  * macro = 1; 
  * micro = 2;
  * default = 0;
  */
  public int getNutirentSelected(){
    int i = 0;
    return i;
  }
  
  /**
  * public function used to retrieve the currently selected era
  * returns a value between 0 and 7 to represent the eras
  * default = -1
  */
  public int getEraSelected(){
    // eras go from 0-7
    int selected = -1;
    for (int i = 0; i < eraBars.size(); i++){
      if (eraBars.get(i).isSelected())
        selected = i;
    }
    return selected;
  }
  public void drawEraBars(){
    for (int i = 0; i < eraBars.size(); i++){
      eraBars.get(i).drawBar();
    }
  }
  public void setSelected(){
    for (int i = 0; i < eraBars.size(); i++){
      eraBars.get(i).setSelected();
    }
  }
  /**
  * private function used to create the EraBars objects and place them in the eraBars arrayList
  * should only be called once
  */
  private void createEraBars(){
    createEraAndSpanArrays();
    eraBars = new ArrayList<EraBar>();
    for(int i = 0; i < spans.size(); i++){
      int x = 0;
      for (int j = 0; j < i; j++){
        x += spans.get(j);
      }
      int y = this.y;
      color c;
      color other;
      if (i%2 == 0){
        c = color(c1.rgb);
        other = color(c2.rgb);
      }
      else {
        c = color(c2.rgb);
        other = color(c1.rgb);
      }
      int span = spans.get(i).intValue();
      int intScale = (int) scale;
      eraBars.add(new EraBar(x*intScale +this.x, y, span * intScale, 16, i, eras.get(i), c, other));
    }
  }
  /**
  * private helper function used to create the era and span arrayLists
  */
  private void createEraAndSpanArrays(){
    spans = new ArrayList<Float>();
    spans.add(progSpan);
    spans.add(WWISpan);
    spans.add(twentySpan);
    spans.add(depressSpan);
    spans.add(WWIISpan);
    spans.add(boomSpan);
    spans.add(vietnamSpan);
    spans.add(infoSpan);
    
    eras = new ArrayList<String>();
    eras.add(progressive);
    eras.add(WWI);
    eras.add(twenties);
    eras.add(depression);
    eras.add(WWII);
    eras.add(boom);
    eras.add(vietnam);
    eras.add(infoAge);
  } 
}