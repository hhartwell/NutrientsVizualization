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
  private float start;
  private float end;
  private float pad;
  private float scale;
  private float currSpan;
  public Timeline(int x, int xAxis){
    start = x;
    pad = x;
    end = xAxis;
    scale = end/100;
    currSpan = 0;
  }
  public void createTimeline(){
    
    fill(255, 0, 0);
    
    //progressive era
    
    rect(start, 2, setSpan(0, progSpan), 16);
    //pushMatrix();
    //translate(60, -25);
    //rotate(20);
    //text(progressive, start + span, 30);
    //popMatrix();
    
    //WWI
    fill(0, 0, 255);
    //
    rect(start, 2, setSpan(currSpan, WWISpan), 16);
    //pushMatrix();
    //translate(80, -50);
    //rotate(20);
    //text(WWI, start + span, 30);
    //popMatrix();
    
    ////Roaring Twenties
    //fill(255, 0, 0);
    //setSpan(currSpan, twentySpan);
    //rect(start, 2, currSpan, 16);
    ////pushMatrix();
    ////translate(110, -80);
    ////rotate(20);
    ////text(twenties, start + span, 30);
    ////popMatrix();
    
    ////Great Depression
    //fill(0, 0, 255);
    //setSpan(currSpan, depressSpan);
    //rect(start, 2, currSpan, 16);
    ////pushMatrix();
    ////translate(145, -127);
    ////rotate(20);
    ////text(depression, start + span, 30);
    ////popMatrix();
    
    ////WWII
    //fill(255, 0, 0);
    //setSpan(currSpan, WWIISpan);
    //rect(start, 2, currSpan, 16);
    ////pushMatrix();
    ////translate(170, -180);
    ////rotate(20);
    ////text(WWII, start + span, 30);
    ////popMatrix();
    
    ////Post-War Boom
    //fill(0, 0, 255);
    //setSpan(currSpan, boomSpan);
    //rect(start, 2, currSpan, 16);
    ////pushMatrix();
    ////translate(210, -215);
    ////rotate(20);
    ////text(boom, start + span, 30);
    ////popMatrix();
    
    ////Vietnam War
    //fill(255, 0, 0);
    //setSpan(currSpan, vietnamSpan);
    //rect(start, 2, currSpan, 16);
    ////pushMatrix();
    ////translate(260, -290);
    ////rotate(20);
    ////text(vietnam, start + span, 30);
    ////popMatrix();
    
    ////information age
    //fill(0, 0, 255);
    //setSpan(currSpan, infoSpan);
    //rect(start, 2, currSpan, 16);
    ////pushMatrix();
    ////translate(370, -380);
    ////rotate(20);
    ////text(infoAge, start + span, 30);
    ////popMatrix();
    
    strokeWeight(2);
    line(pad, 0, pad, 20);
    line(pad, 10, end, 10);
    line(end, 0, end, 20);
  }
  private float setSpan(float prevSpan, float yearSpan){
    currSpan = yearSpan * scale;
    start+= prevSpan;
    return currSpan + start;
  }
  
}