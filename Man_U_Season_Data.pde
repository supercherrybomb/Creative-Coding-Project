// The data collected was Manchester United's first 11 games of the season
// I collected which matches they won where i was happy
// and the matches they lost :( 
// I also collected the goal difference of each match whether it was a draw win or loss
// I also collected how many points they got compared to how many they could
// have got. Then Finally the actual goal tally. I hope you like my data collection :) 

int[]goaldiff;
int[]PointsGained;
int[]PotentialPoints;
int[]Goals;
 
void setup()
{
  size(800, 600);
  textAlign(LEFT,TOP);
  strokeWeight(0.5);
 
  String[] textLines = loadStrings("ManUData.csv");
 
  goaldiff = new int[textLines.length];
  PointsGained = new int[textLines.length];
  PotentialPoints = new int[textLines.length];
  Goals = new int[textLines.length];
 
  for (int i=1; i<textLines.length; i=i+1)
  {
    String[] values = split(textLines[i], ",");
    goaldiff[i]     = int(values[0]); 
    PointsGained[i] = int(values[1]);
    PotentialPoints[i] = int(values[2]);
    Goals[i] = int(values[3]);
  }
}
 
 
void draw()
{
  background(255);
  float yPos= 2;
 
  for (int i=1; i<=10; i=i+1)
  {
    fill(0,0,0);
    textSize(14);
    text(Goals[i], 5, yPos);
    
    fill(0,0,0);
    textSize(50);
    text("MAN U SEASON DATA", 175, 250);
    
    fill(0,0,0);
    textSize(14);
    text("Goal Difference ", 50, 200);
    
    fill(0,0,0);
    textSize(14);
    text("Man U points vs potential max", 200, 200);
 
    fill(0,goaldiff[i]*255,200);
    rect(100,yPos+1,goaldiff[i]*10,14);
    
    noStroke();
    fill(75,200 - PointsGained[i]*15,200,100);
    rect(200,yPos+1,PointsGained[i]*6,14);   
    
    noFill();
    stroke(0);
    rect(200,yPos+1,PotentialPoints[i]*6,14);
    
    noFill();
    stroke(0);
    rect(200,0,220,175);
    
    fill(Goals[i]*15,120,Goals[i]*6);
    stroke(0);
    circle(20+Goals[i]*29,320+Goals[i]*12,Goals[i]*10);
    text("Goals Scored",20,400);
    
    
    
    yPos += 17;
  }
}
