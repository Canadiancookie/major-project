/*
 * Dice Simulator
 * by Brayden S.
 * 
 * Simulates rolling dice
 * 
 */
 
int rand; //for random integers
 
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
  text(rand+1, 350, 25);
  
  //dice
  if(rand ==0){
    image(side1,350,300,200,200);
  }
  if(rand ==1){
    image(side2,350,300,200,200);
  }
  if(rand ==2){
    image(side3,350,300,200,200);
  }
  if(rand ==3){
    image(side4,350,300,200,200);
  }
  if(rand ==4){
    image(side5,350,300,200,200);
  }
  if(rand ==5){
    image(side6,350,300,200,200);
  }
}

void keyPressed(){
  if(key == 'r' || key == 'R'){
    rand=int(random(0,6));
  }
}
