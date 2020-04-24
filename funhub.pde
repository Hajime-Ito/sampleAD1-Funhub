float zoom = 1.8;
float w_width = 300 * zoom;
float w_height = 130 * zoom;
float[] bgTime = {150, 30, 20};
float bgBand = 300;
float[] stTime = {-150, 0, -90};
float stBand = 300;
float[] cTime = {90, -30, -100};
float cBand = 300;

float moveBand = 80;

void setup() {
  size(540, 234, P2D);
  background(0, 0, 0);
}

void draw() {
  fill((noise(bgTime[0])- 0.5)*bgBand, (noise(bgTime[1])- 0.5)*bgBand, (noise(bgTime[2])- 0.5)*bgBand);
  beginShape();
  vertex(0, 0);
  vertex(width, 0);
  fill((noise(bgTime[0] - 0.06)- 0.5)*bgBand, (noise(bgTime[1] - 0.06)- 0.5)*bgBand, (noise(bgTime[2] - 0.06)- 0.5)*bgBand);
  vertex(width, height);
  vertex(0, height);
  endShape();

  //background( (noise(bgTime[0])- 0.5)*bgBand, (noise(bgTime[1])- 0.5)*bgBand, (noise(bgTime[2])- 0.5)*bgBand);

  fill(255 + (noise(cTime[0])- 0.5)*cBand, 165  +  (noise(cTime[1])- 0.5)*cBand, 40 +  (noise(cTime[2])- 0.5)*cBand);
  noStroke();
  //rect(width/2 - 10*zoom, height/2 - 28*zoom, 135*zoom, 70*zoom, 11*zoom);
  rect(width/2 - 10*zoom + (noise(cTime[0])- 0.5)*moveBand, height/2 - 28*zoom + (noise(cTime[1])- 0.5)*moveBand, 135*zoom, 70*zoom, 11*zoom);

  textSize(70*zoom);
  fill(250 +  (noise(stTime[0])- 0.5)*stBand, 250 +  (noise(stTime[1])- 0.5)*stBand, 250 +  (noise(stTime[2])- 0.5)*stBand);
  textAlign(CENTER, CENTER);
  //text("Funhub", width/2 - 6*zoom, height/2);
  text("Fun", width/2 - 6*zoom + (noise(cTime[0]+0.05)- 0.5)*moveBand - 67*zoom, height/2 + (noise(cTime[1]+0.05)- 0.5)*moveBand);

  fill(0 +  (noise(stTime[1])- 0.5)*stBand, 0 +  (noise(stTime[1])- 0.5)*stBand, 0 +  (noise(stTime[2])- 0.5)*stBand);
  text("hub", width/2 - 6*zoom + (noise(cTime[0]+0.03)- 0.5)*moveBand + 63*zoom, height/2 + (noise(cTime[1]+0.03)- 0.5)*moveBand);

  for (int i=0; i < bgTime.length; i++)
    bgTime[i] += 0.005;

  for (int i=0; i < cTime.length; i++)
    cTime[i] += 0.005;

  for (int i=0; i < stTime.length; i++)
    stTime[i] += 0.005;
}
