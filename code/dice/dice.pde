/*
 * Dice Simulator
 * by Brayden S.
 * 
 * Simulates rolling dice
 * 
 */
 
//images (part 1)
PImage side1;
PImage side2;
PImage side3;
PImage side4;
PImage side5;
PImage side6;

void setup() {
  size(700,600); //canvas size
  
  //images (part 2)
  side1 = loadImage("side1.png");
  side2 = loadImage("side2.png");
  side3 = loadImage("side3.png");
  side4 = loadImage("side4.png");
  side5 = loadImage("side5.png");
  side6 = loadImage("side6.png");
}

void draw() {
  imageMode(CENTER);
  background(255,255,255);
  
  //dice
  image(side1,350,300,200,200);
}
