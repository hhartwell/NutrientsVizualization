/**
* class used to store bar information
* might be unnecessary, but could help if
*   we decide to make the bars interactive
*/
public class Bar{
  protected float x;
  protected float y;
  
  protected float xActual;
  protected float yActual;
  
  protected float barWidth;
  protected float barHeight;
  
  protected LABColor lc;
  
  /**
  * public contructor
  * @param int x - x position of the bar
  * @param int y - y position of the bar
  * @param int barWidth - width of the bar
  * @param int barHeight - height of the bar
  * @param color c - color that the bar will be filled with
  */
  public Bar(float x, float y, float xActual, float yActual, float barWidth, float barHeight, color c){
    this.x = x;
    this.y = y;
    this.xActual = xActual;
    this.yActual = yActual;
    this.barWidth = barWidth;
    this.barHeight = barHeight;
    
    this.lc = new LABColor(c);
  }
  /**
  * funcion used to draw the bars
  */
  public void drawBar(){
    translate(x, y);
    fill(lc.rgb);
    float xStart = -barWidth/2;
    float yStart = 0;
    rect(xStart, yStart, barWidth, barHeight);
    translate(-x, -y);
    fill(0);
    mouseOver();
  }
  public boolean mouseOver(){
    if (mouseX > xActual - barWidth/2 && mouseX < xActual + barWidth/2 && mouseY < yActual && mouseY > yActual + barHeight){
      return true;
    }
    else{ 
      //translate(x, y);
      return false;
    }
  }
  @Override
  public String toString(){
    String s = "";
    s += "x: " + x +" y: " + y + " | xActual: " + xActual + " yActual: " + yActual;
    return s;
  }
}