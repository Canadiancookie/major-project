/*
 * Dice Simulator
 * by Brayden S.
 * 
 * Simulates rolling dice
 * 
 */

//for random integers
int die1;
int die2;

//display extra dice or not
boolean display2 = false;

//images (part 1)
PImage side1;
PImage side2;
PImage side3;
PImage side4;
PImage side5;
PImage side6;

void setup() {
  size(700, 600); //canvas size

  //images (part 2)
  side1 = loadImage("side1.png");
  side2 = loadImage("side2.png");
  side3 = loadImage("side3.png");
  side4 = loadImage("side4.png");
  side5 = loadImage("side5.png");
  side6 = loadImage("side6.png");
}

void draw() {
  background(255, 255, 255);

  imageMode(CENTER);
  textAlign(CENTER);

  //die 1
  if (die1 ==0) {
    image(side1, 350, 300, 200, 200);
  }
  if (die1 ==1) {
    image(side2, 350, 300, 200, 200);
  }
  if (die1 ==2) {
    image(side3, 350, 300, 200, 200);
  }
  if (die1 ==3) {
    image(side4, 350, 300, 200, 200);
  }
  if (die1 ==4) {
    image(side5, 350, 300, 200, 200);
  }
  if (die1 ==5) {
    image(side6, 350, 300, 200, 200);
  }

  //die 2
  if (display2) {

    if (die2==0) {
      image(side1, 125, 300, 200, 200);
    }
    if (die2==1) {
      image(side2, 125, 300, 200, 200);
    }
    if (die2==2) {
      image(side3, 125, 300, 200, 200);
    }
    if (die2==3) {
      image(side4, 125, 300, 200, 200);
    }
    if (die2==4) {
      image(side5, 125, 300, 200, 200);
    }
    if (die2==5) {
      image(side6, 125, 300, 200, 200);
    }
  }
}

void keyPressed() {

  //reroll
  if (key == 'r' || key == 'R') {
    die1=int(random(0, 6));
    loop();
  }

  if (key == 'r' || key == 'R') {
    die2=int(random(0, 6));
    loop();
  }

  //show integer
  if (key == 'i' || key == 'I') {
    fill(0, 0, 0);
    textSize(20);
    text(die1+1, 350, 25);
    noLoop();
  }

  //# dice selection
  if (key == '1') {
    display2 = false;
  }

  if (key == '2') {
    display2 = true;
    die2=0;
  }
}
