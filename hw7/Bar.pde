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
  
  public Bar(int x, int y, int barWidth, int barHeight, color c){
    this.x = x;
    this.y = y;
    
    this.barWidth = barWidth;
    this.barHeight = barHeight;
    
    this.lc = new LABColor(c);
  }
  
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