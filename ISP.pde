//Archery Game
//Max Kingsley, 2015

int x = 50;
int[] y = new int [3];


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

  x=x+1;

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
  while (apples < y.length) {
    fill(250);
    ellipse(x, y[apples] + 150, 100, 50);
    ellipse(x - 200, y[apples] + 210, 70, 30);
    ellipse(x - 450, y[apples] + 180, 80, 40);


    apples = apples + 1;
  }
  // if (ellipse() ≥ width){

  // apples = 0;


  //character concepts

  //bow (undrawn)
  fill(0);
  rect(350, 50, 2, 400);
  fill(#A52A2A);
  beginShape();
  vertex(350, 50);
  vertex(460, 200);
  vertex(460, 300);
  vertex(350, 450);
  vertex(450, 300);
  vertex(450, 200);
  vertex(350, 50);
  endShape();

  fill(250);
  beginShape();
  vertex(350, 240);
  vertex(375, 240);
  vertex(385, 250);
  vertex(375, 260);
  vertex(350, 260);
  vertex(360, 250);
  vertex(350, 240);
  endShape();

  fill(128, 128, 128);
  rect(348, 249, 200, 3);

  fill(0);
  triangle(530, 245, 530, 255, 560, 250);

  //stick guy
  fill(0);
  rect(295, 210, 10, 150);

  fill(250);
  ellipse(300, 210, 75, 75);

  //beginShape();
  // vertex
}

