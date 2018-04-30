/**
* class used to create the bars for the eras
*   this class's main function is to make the EraBars interactive
*   this class is meant to be used in the TimeLine class
*/
public class EraBar {
  // values used for the constructor
  private int x, y, barWidth, barHeight, era;
  private boolean selected;
  private String eraName;
  private LABColor initColor;
  private LABColor selectedCol;
  
  /**
  * public constructor
  * @param x - integer x coordinate for the bar
  * @param y - integer y coordinate for the bar
  * @param barWidth - width of the era bar
  * @param barHeight - height of the era bar
  * @param era - integer value for the era
  */
  public EraBar(int x, int y, int barWidth, int barHeight, int era, String eraName, color c, color c2){
    this.x = x;
    this.y = y;
    //this.xActual = xActual;
    //this.yActual = yActual;
    
    this.barWidth = barWidth;
    this.barHeight = barHeight;
    
    this.era = era;
    this.eraName = eraName;
    selected = false;
    this.initColor = new LABColor(c);
    this.selectedCol = initColor.lerp(new LABColor(c2), .5);
    System.out.println(x + ", " + y);
  }
  public void drawBar(){
    translate(x, y);
    if (isSelected()){
      fill(selectedCol.rgb);
    }
    else{
      fill(initColor.rgb);
    }
    rect(0, 0, barWidth, barHeight);
    labelBar();
    translate(-x, -y);
  }
  private void labelBar(){
    int posX = barWidth/2;
    int posY = 30;
    pushMatrix();
    translate(posX, posY);
    rotate(7*PI/4);
    textAlign(RIGHT);
    text(eraName, 0, 0);
    rotate(-7*PI/4);
    translate(-posX, -posY);
    popMatrix();
  }

  /**
  * public funtion used to determine if the mouse is over the era bar. 
  * can only be used in the mouseClicked() function or it will screw things up
  */
  public void setSelected(){
    if (mouseX > x && mouseX < x + barWidth && mouseY > y && mouseY < y + barHeight){
      System.out.println(eraName);
      selected = true;
    }
    else{
      selected = false;
    }
  }
  /**
  * boolean function to check if the era has been selected
  */
  public boolean isSelected(){
    return  selected;
  }
}