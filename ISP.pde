//Archery Game
//Max Kingsley, 2015

int x = 50;
int[] y = new int [1];
int xPositionCloud1 = 1;
int xPositionCloud2 = 1;
int xPositionCloud3 = 1;
int radius = 100;
int radius1 = 70;
int radius2 = 80;

void setup() {

  size(600, 600);

  int counter = 5;
  y[0] = 60;
  while (counter < y.length) {
    y[counter] = y[counter - 1] + 0;
    counter = counter + 2;
  }
}

void draw() {

  background(0, 200, 250);

  xPositionCloud1=xPositionCloud1 +1;
  xPositionCloud2=xPositionCloud2 +1;
  xPositionCloud3=xPositionCloud3 +1;

  //mountains
  fill(150);
  triangle(200, 300, 100, 550, 500, 550);
  triangle(350, 150, 200, 550, 600, 550);

  //ground
  fill(0, 250, 0);
  rect(0, 500, 600, 100);

  //sun
  fill(250, 250, 50);
  ellipse( 450, 100, 50, 50);

  //moving clouds
  int apples = 0;
  if (apples < y.length) {
    fill(250);
    ellipse(xPositionCloud1, y[apples] + 150, radius, 50);
    ellipse(xPositionCloud2 - 200, y[apples] + 210, radius1, 30);
    ellipse(xPositionCloud3 - 450, y[apples] + 180, radius2, 40);


    apples = apples + 1;
  }

  if (xPositionCloud1 > width + radius) {
    
    xPositionCloud1 *= 0;
    
  }
  
  if (xPositionCloud2 > width -200 + radius1) {
    
    xPositionCloud2= 0;
    
  }
  
  if (xPositionCloud3 > width -450 + radius2) {
    
    xPositionCloud3= 0;
    
  }

  // if (ellipse() ≥ width){

  // apples = 0;

  drawImage(0.3, 0, 415);
  drawImage1(0.3, 500, 415);
}

void drawImage(float drawingScale, int xShift, int yShift) {

  //character concepts
  //stick guy
  fill(0);
  rect(295 * drawingScale + xShift, 210 * drawingScale + yShift, 10 * drawingScale, 150 * drawingScale);

  fill(250);
  ellipse(300 * drawingScale + xShift, 210 * drawingScale + yShift, 75 * drawingScale, 75 * drawingScale);

  //right arm
  fill(0);
  beginShape();
  vertex(300 * drawingScale + xShift, 250 * drawingScale + yShift);
  vertex(250 * drawingScale + xShift, 300 * drawingScale + yShift);
  vertex(350 * drawingScale + xShift, 265 * drawingScale + yShift);
  vertex(350 * drawingScale + xShift, 256 * drawingScale + yShift);
  vertex(255 * drawingScale + xShift, 295 * drawingScale + yShift);
  vertex(305 * drawingScale + xShift, 250 * drawingScale + yShift);
  endShape();

  //left arm
  beginShape();
  vertex(300 * drawingScale + xShift, 250 * drawingScale + yShift);
  vertex(450 * drawingScale + xShift, 260 * drawingScale + yShift);
  vertex(450 * drawingScale + xShift, 270 * drawingScale + yShift);
  vertex(300 * drawingScale + xShift, 255 * drawingScale + yShift);
  endShape();

  //Right Leg
  beginShape();
  vertex(295 * drawingScale + xShift, 360 * drawingScale + yShift);
  vertex(250 * drawingScale + xShift, 500 * drawingScale + yShift);
  vertex(260 * drawingScale + xShift, 500 * drawingScale + yShift);
  vertex(300 * drawingScale + xShift, 360 * drawingScale + yShift);
  endShape();

  //Left Leg
  beginShape();
  vertex(300 * drawingScale + xShift, 360 * drawingScale + yShift);
  vertex(350 * drawingScale + xShift, 500 * drawingScale + yShift);
  vertex(360 * drawingScale + xShift, 500 * drawingScale + yShift);
  vertex(305 * drawingScale + xShift, 360 * drawingScale + yShift);
  endShape();

  //bow (undrawn)
  fill(0);
  rect(350 * drawingScale + xShift, 50 * drawingScale + yShift, 2 * drawingScale, 400 * drawingScale);
  fill(#A52A2A);
  beginShape();
  vertex(350 * drawingScale + xShift, 50 * drawingScale + yShift);
  vertex(460 * drawingScale + xShift, 200 * drawingScale + yShift);
  vertex(460 * drawingScale + xShift, 300 * drawingScale + yShift);
  vertex(350 * drawingScale + xShift, 450 * drawingScale + yShift);
  vertex(450 * drawingScale + xShift, 300 * drawingScale + yShift);
  vertex(450 * drawingScale + xShift, 200 * drawingScale + yShift);
  vertex(350 * drawingScale + xShift, 50 * drawingScale + yShift);
  endShape();

  fill(250);
  beginShape();
  vertex(350 * drawingScale + xShift, 240 * drawingScale + yShift);
  vertex(375 * drawingScale + xShift, 240 * drawingScale + yShift);
  vertex(385 * drawingScale + xShift, 250 * drawingScale + yShift);
  vertex(375 * drawingScale + xShift, 260 * drawingScale + yShift);
  vertex(350 * drawingScale + xShift, 260 * drawingScale + yShift);
  vertex(360 * drawingScale + xShift, 250 * drawingScale + yShift);
  vertex(350 * drawingScale + xShift, 240 * drawingScale + yShift);
  endShape();

  fill(128, 128, 128);
  rect(348 * drawingScale + xShift, 249 * drawingScale + yShift, 200 * drawingScale, 3 * drawingScale);

  fill(0);
  triangle(530 * drawingScale + xShift, 245 * drawingScale + yShift, 530 * drawingScale + xShift, 255 * drawingScale + yShift, 560 * drawingScale + xShift, 250 * drawingScale + yShift);
}
//FIGURE ^ TARGET V

void drawImage1(float drawingScale1, int xShift1, int yShift1) {

  //Drawing Target
  fill(249);
  rect(100 * drawingScale1 + xShift1, 100 * drawingScale1 + yShift1, 75 * drawingScale1, 400 * drawingScale1);
  fill(1);
  rect(100 * drawingScale1 + xShift1, 150 * drawingScale1 + yShift1, 75 * drawingScale1, 300 * drawingScale1);
  fill(0, 0, 250);
  rect(100 * drawingScale1 + xShift1, 200 * drawingScale1 + yShift1, 75 * drawingScale1, 200 * drawingScale1);
  fill(250, 0, 0);
  rect(100 * drawingScale1 + xShift1, 250 * drawingScale1 + yShift1, 75 * drawingScale1, 100 * drawingScale1);
  fill(200, 200, 50);
  rect(100 * drawingScale1 + xShift1, 280 * drawingScale1 + yShift1, 75 * drawingScale1, 40 * drawingScale1);

  //legs and back
  fill(#A52A2A);
  rect(170 * drawingScale1 + xShift1, 100 * drawingScale1 + yShift1, 25 * drawingScale1, 400 * drawingScale1);

  beginShape();
  vertex(195 * drawingScale1 + xShift1, 250 * drawingScale1 + yShift1);
  vertex(250 * drawingScale1 + xShift1, 500 * drawingScale1 + yShift1);
  vertex(270 * drawingScale1 + xShift1, 500 * drawingScale1 + yShift1);
  vertex(195 * drawingScale1 + xShift1, 200 * drawingScale1 + yShift1);
  endShape();
}

