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
int die3;

int sumdie;

//display extra dice or not
boolean display1 = true;
boolean display2 = false;
boolean display3 = false;

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
  
  fill(0, 0, 0);
  textSize(20);
  text(sumdie, 350, 25);

  //die 1
  if (die1==0) {
    image(side1, 350, 300, 200, 200);
  }
  if (die1==1) {
    image(side1, 350, 300, 200, 200);
  }
  if (die1==2) {
    image(side2, 350, 300, 200, 200);
  }
  if (die1==3) {
    image(side3, 350, 300, 200, 200);
  }
  if (die1==4) {
    image(side4, 350, 300, 200, 200);
  }
  if (die1==5) {
    image(side5, 350, 300, 200, 200);
  }
  if (die1==6) {
    image(side6, 350, 300, 200, 200);
  }

  //die 2
  if (display2) {
    if (die2==0) {
      image(side1, 125, 300, 200, 200);
    }
    if (die2==1) {
      image(side1, 125, 300, 200, 200);
    }
    if (die2==2) {
      image(side2, 125, 300, 200, 200);
    }
    if (die2==3) {
      image(side3, 125, 300, 200, 200);
    }
    if (die2==4) {
      image(side4, 125, 300, 200, 200);
    }
    if (die2==5) {
      image(side5, 125, 300, 200, 200);
    }
    if (die2==6) {
      image(side6, 125, 300, 200, 200);
    }
  }

  //die 3
  if (display3) {
    if (die3==0) {
      image(side1, 575, 300, 200, 200);
    }
    if (die3==1) {
      image(side1, 575, 300, 200, 200);
    }
    if (die3==2) {
      image(side2, 575, 300, 200, 200);
    }
    if (die3==3) {
      image(side3, 575, 300, 200, 200);
    }
    if (die3==4) {
      image(side4, 575, 300, 200, 200);
    }
    if (die3==5) {
      image(side5, 575, 300, 200, 200);
    }
    if (die3==6) {
      image(side6, 575, 300, 200, 200);
    }
  }
}

void keyPressed() {

  //rerolling all dice
  if (key == 'r' || key == 'R') {
    die1=int(random(1, 7));
    die2=int(random(1, 7));
    die3=int(random(1, 7));

    if (display1 && !display2 && !display3) {
      sumdie=die1;
    }

    if (display1 && display2 && !display3) {
      sumdie=die1+die2;
    }
    
    if (display1 && display2 && display3) {
      sumdie=die1+die2+die3;
    }
  }
  
  //rerolling single dice
  if (key == '7') {
    die1=int(random(1,7));
    
    if (display1 && !display2 && !display3) {
      sumdie=die1;
    }

    if (display1 && display2 && !display3) {
      sumdie=die1+die2;
    }
    
    if (display1 && display2 && display3) {
      sumdie=die1+die2+die3;
    }
  }
  if (key == '8') {
    die2=int(random(1,7));
    
    if (display1 && !display2 && !display3) {
      sumdie=die1;
    }

    if (display1 && display2 && !display3) {
      sumdie=die1+die2;
    }
    
    if (display1 && display2 && display3) {
      sumdie=die1+die2+die3;
    }
  }
  if (key == '9') {
    die3=int(random(1,7));
    
    if (display1 && !display2 && !display3) {
      sumdie=die1;
    }

    if (display1 && display2 && !display3) {
      sumdie=die1+die2;
    }
    
    if (display1 && display2 && display3) {
      sumdie=die1+die2+die3;
    }
  }

  //number of dice onscreen
  if (key == '1') {
    display1 = true;
    display2 = false;
    display3 = false;
    sumdie=die1;
  }

  if (key == '2') {
    display1 = true;
    display2 = true;
    display3 = false;
    sumdie=die1+die2;
  }

  if (key == '3') {
    display1 = true;
    display2 = true;
    display3 = true;
    sumdie=die1+die2+die3;
  }
}
