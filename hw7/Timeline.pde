/*
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
  final float progSpan = 4 ;
  final boolean progressBool;
  final String WWI = "World War I";//1914-1919 added year to avoid gap in data
  final float WWISpan = 5;
  final boolean WWIBool;
  final String twenties = "Roaring Twenties";//1920-1928
  final float twentySpan = 8;
  final boolean twentiesBool;
  final String depression = "Great Depression";//1929-1938
  final float depressSpan = 9;
  final boolean depressBool;
  final String WWII = "World War II";//1939-1945
  final float WWIISpan = 6;
  final boolean WWIIBool;
  final String boom = "Post-War Boom";//1946-1959
  final float boomSpan = 13;
  final boolean boomBool;
  final String vietnam = "Vietnam War";//1960-1975
  final float vietnamSpan = 15;
  final boolean vietnamBool;
  final String infoAge = "Information Age";//1976-2010
  final float infoSpan = 32;
  final boolean infoBool;
  private float start;
  private float end;
  private float pad;
  private float scale;
  private float translateX;
  private float translateY;
  private float startSpan;
  public Timeline(int x, int xAxis){
    start = x;
    pad = x;
    end = xAxis;
    scale = end/100;
    progressBool = false;
    WWIBool = false;
    twentiesBool = false;
    depressBool = false;
    WWIIBool = false;
    boomBool = false;
    vietnamBool = false;
    infoBool = false;
  }
  public void createTimeline(){
    startSpan = start;
    fill(255, 0, 0);
    
    //progressive era
    setBar(progressive, progSpan);
     
    //WWI
    fill(0, 0, 255);
    setBar(WWI, WWISpan);
    
    //Roaring Twenties
    fill(255, 0, 0);
    setBar(twenties, twentySpan);
    
     //Great Depression
    fill(0, 0, 255);
    setBar(depression, depressSpan);
    
    //WWII
    fill(255, 0, 0);
    setBar(WWII, WWIISpan);
    
    //Post-War Boom
    fill(0, 0, 255);
    setBar(boom, boomSpan);
    
    //Vietnam War
    fill(255, 0, 0);
    setBar(vietnam, vietnamSpan);
    
    //information age
    fill(0, 0, 255);
    setBar(infoAge, infoSpan);
    
    strokeWeight(2);
    line(pad, 0, pad, 20);
    line(pad, 10, end, 10);
    line(end, 0, end, 20);
  }
  public void mouseClicked(){
    
    //how are we bringing up graphs?
    //Which are stacked
    //Which are not?
    if(progressBool){
    }
    if(WWIBool){
    }
    if(twentiesBool){
    }
    if(depressBool){
    }
    if(WWIIBool){
    }
    if(boomBool){
    }
    if(vietnamBool){
    }
    if(infoBool){
    }
  }
  private void setBar(String eraName, float eraSpan){
    translateX = startSpan + 50;
    translateY = - startSpan + 90 ; 
    rect(startSpan, 2, eraSpan * scale, 16);
    startSpan += eraSpan * scale;
    pushMatrix();
    translate(translateX -= 15, translateY -= 12 );
    rotate(20);
    text(eraName, startSpan, 30);
    popMatrix();
    
  }
}