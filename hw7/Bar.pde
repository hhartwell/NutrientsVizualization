/**
* class used to store bar information
* might be unnecessary, but could help if
*   we decide to make the bars interactive
*/
public class Bar{
  protected int x;
  protected int y;
  
  protected int barWidth;
  protected int barHeight;
  
  protected LABColor lc;
  
  /**
  * public contructor
  * @param int x - x position of the bar
  * @param int y - y position of the bar
  * @param int barWidth - width of the bar
  * @param int barHeight - height of the bar
  * @param color c - color that the bar will be filled with
  */
  public Bar(int x, int y, int barWidth, int barHeight, color c){
    this.x = x;
    this.y = y;
    
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
    int xStart = -barWidth/2;
    int yStart = 0;
    rect(xStart, yStart, barWidth, barHeight);
    translate(-x, -y);
    fill(0);
  }
  
}