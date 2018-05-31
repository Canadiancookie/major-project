/*
 * Dice Simulator
 * by Brayden S.
 * 
 * Simulates rolling dice
 * 
 */
 
float rand; //for random integers
 
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
  background(255,255,255);
  
  imageMode(CENTER);
  textAlign(CENTER);
  
  //text
  fill(0,0,0);
  textSize(20);
  text(rand, 350, 25);
  
  //dice
  if(rand <= 1){
    image(side1,350,300,200,200);
  }
}

void keyPressed(){
  if(key == 'r'){
    rand=random(0,5);
  }
}
