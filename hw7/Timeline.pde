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
  final int progSpan = 4;
  final String WWI = "World War I";//1914-1919 added year to avoid gap in data
  final int WWISpan = 5;
  final String twenties = "Roaring Twenties";//1920-1928
  final int twentySpan = 8;
  final String depression = "Great Depression";//1929-1938
  final int depressSpan = 9;
  final String WWII = "World War II";//1939-1945
  final int WWIISpan = 6;
  final String boom = "Post-War Boom";//1946-1959
  final int boomSpan = 13;
  final String vietnam = "Vietnam War";//1960-1975
  final int vietnamSpan = 15;
  final String infoAge = "Information Age";//1976-2010
  final int infoSpan = 32;
  private float  span;
  
  public Timeline(){
    span = 0;
  }
  public void createTimeline(){
    int start = 50;
    int end = 650;
    span = 0;
    fill(255, 0, 0);
    //progressive era
    rect(50, 2, (progSpan), 16);
    pushMatrix();
    translate(60, -25);
    rotate(20);
    text(progressive, start + span, 30);
    popMatrix();
    //WWI
    span += progSpan;
    fill(0, 0, 255);
    rect((50 + span), 2, (WWISpan), 16);
    pushMatrix();
    translate(80, -50);
    rotate(20);
    text(WWI, start + span, 30);
    popMatrix();
    //Roaring Twenties
    span += WWISpan;
    fill(255, 0, 0);
    rect((50 + span), 2, (twentySpan), 16);
    pushMatrix();
    translate(110, -80);
    rotate(20);
    text(twenties, start + span, 30);
    popMatrix();
    //Great Depression
    span += twentySpan;
    fill(0, 0, 255);
    rect((50 + span), 2, (depressSpan), 16);
    pushMatrix();
    translate(145, -127);
    rotate(20);
    text(depression, start + span, 30);
    popMatrix();
    //WWII 
    span += depressSpan;
    fill(255, 0, 0);
    rect((50 +  span), 2, (WWIISpan), 16);
    pushMatrix();
    translate(170, -180);
    rotate(20);
    text(WWII, start + span, 30);
    popMatrix();
    //Post-War Boom
    span += WWIISpan;
    fill(0, 0, 255);
    rect((50 + span), 2, (boomSpan), 16);
    pushMatrix();
    translate(210, -215);
    rotate(20);
    text(boom, start + span, 30);
    popMatrix();
    //Vietnam War
    span += boomSpan;
    fill(255, 0, 0);
    rect((50 + span), 2, (vietnamSpan), 16);
    pushMatrix();
    translate(260, -290);
    rotate(20);
    text(vietnam, start + span, 30);
    popMatrix();
    //information age
    span += vietnamSpan;
    fill(0, 0, 255);
    rect((50 + span), 2, (infoSpan), 16);
    pushMatrix();
    translate(370, -380);
    rotate(20);
    text(infoAge, start + span, 30);
    popMatrix();
    strokeWeight(2);
    line(50, 0, 50, 20);
    line(start, 10, end, 10);
    line(650, 0, 650, 20);
  }
  
  
}