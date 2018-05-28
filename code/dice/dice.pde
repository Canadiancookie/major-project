/*
 * Dice Simulator
 * by Brayden S.
 * 
 * Simulates rolling dice
 * 
 */
 
void setup() {
  size(700,600); //canvas size
}

void draw() {
  background(100,100,100);
  
  //dice
  rectMode(CENTER);
  stroke(0,0,0);
  strokeWeight(2);
  fill(255,255,255);
  rect(350,300,200,200,10);
}
