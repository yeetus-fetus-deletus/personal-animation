import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

PImage gibson;
int counter;
float speaker1;
float speaker2;
float arm;

Minim minim;
AudioPlayer song;

int x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12;

void setup() {
  size(800, 600);
  gibson = loadImage("gibson.png");
  minim = new Minim(this);
  song = minim.loadFile("01_trivium_brave_this_storm_myzuka.mp3");
  song.play();
  
  counter = 0;
  speaker1 = 160;
  speaker2 = 130;
  arm = 410;
  x1 = 0;
  x2 = 160;
  x3 = 320;
  x4 = 480;
  x5 = 640;
  x6 = 800;
  
  x7 = 840;
  x8 = 680;
  x9 = 520;
  x10 = 360;
  x11 = 200;
  x12 = 40;
}

void draw() {
  speaker1 = speaker1 - 0.5;
  speaker2 = speaker2 - 0.5;
  counter = counter + 1;
  arm = arm + 3;
  
  x1 = x1 + 2;
  x2 = x2 + 2;
  x3 = x3 + 2;
  x4 = x4 + 2;
  x5 = x5 + 2;
  x6 = x6 + 2;
  
  x7 = x7 - 2;
  x8 = x8 - 2;
  x9 = x9 - 2;
  x10 = x10 - 2;
  x11 = x11 - 2;
  x12 = x12 - 2;
  
  //stage room
  background(140, 85, 25);
  fill(210, 145, 80);
  stroke(210, 145, 80);
  strokeWeight(1);
  rect(0, 450, 800, 150);
  fill(0);
  stroke(0);
  circle(50, 50, 100);
  circle(150, 50, 100);
  circle(250, 50, 100);
  circle(350, 50, 100);
  circle(450, 50, 100);
  circle(550, 50, 100);
  circle(650, 50, 100);
  circle(750, 50, 100);
  rect(0, 0, 800, 50);
  
  fill(0, 140, 255);
  rect(x1, 250, 120, 20);
  fill(0, 255, 40);
  rect(x2, 250, 120, 20);
  fill(240, 255, 0);
  rect(x3, 250, 120, 20);
  fill(255, 170, 0);
  rect(x4, 250, 120, 20);
  fill(255, 0, 0);
  rect(x5, 250, 120, 20);
  fill(255, 10, 200);
  rect(x6, 250, 120, 20);
  
  fill(0, 230, 255);
  rect(x7, 350, 120, 20);
  fill(0, 255, 40);
  rect(x8, 350, 120, 20);
  fill(240, 255, 0);
  rect(x9, 350, 120, 20);
  fill(255, 170, 0);
  rect(x10, 350, 120, 20);
  fill(255, 0, 0);
  rect(x11, 350, 120, 20);
  fill(255, 10, 200);
  rect(x12, 350, 120, 20);
  
  if(x1 > 800) {
    x1 = -120;
  }
  if(x2 > 800) {
    x2 = -120;
  }
  if(x3 > 800) {
    x3 = -120;
  }
  if(x4 > 800) {
    x4 = -120;
  }
  if(x5 > 800) {
    x5 = -120;
  }
  if(x6 > 800) {
    x6 = -120;
  }
  if(x7 < 0) {
    x7 = 800;
  }
  if(x8 < 0) {
    x8 = 800;
  }
  if(x9 < 0) {
    x9 = 800;
  }
  if(x10 < 0) {
    x10 = 800;
  }
  if(x11 < 0) {
    x11 = 800;
  }
  if(x12 < 0) {
    x12 = 800;
  }
  
  //amps/cabs
  
  //cab1
  //3D casing
  fill(0);
  stroke(0);
  rect(50, 300, 200, 200);
  rect(10, 300, 40, 160);
  rect(50, 280, 160, 20);
  triangle(50, 300, 10, 300, 10, 280);
  triangle(50, 300, 10, 280, 50, 280);
  triangle(50, 500, 10, 460, 50, 460);
  triangle(210, 300, 210, 280, 250, 300);
  
  //speaker
  fill(75);
  ellipse(150, 400, speaker1, speaker1);
  ellipse(150, 400, speaker2, speaker2);
  ellipse(150, 400, 40, 40);
  
  //grille
  grille(0, 0);
  
  //cab2
  //3D casing
  fill(0);
  stroke(0);
  rect(550, 300, 200, 200);
  rect(750, 300, 40, 160);
  rect(590, 280, 160, 20);
  triangle(790, 280, 750, 300, 750, 280);
  triangle(790, 300, 750, 300, 790, 280);
  triangle(750, 500, 790, 460, 750, 460);
  triangle(590, 300, 590, 280, 550, 300);
  
  //speaker
  fill(75);
  ellipse(650, 400, speaker1, speaker1);
  ellipse(650, 400, speaker2, speaker2);
  ellipse(650, 400, 40, 40);
  
  //grille
  grille(500, 0);
  
  //dude
  dude(400, 300);
  
  //animated guitar
  image(gibson, 170, 330, 480, 160);
  
  //strobe lighting
  strokeWeight(1);
  fill(0);
  //1
  triangle(50, 120, 150, 120, 70, 10);
  triangle(50, 120, 150, 120, 130, 10);
  ellipse(100, 120, 100, 50);
  //2
  triangle(150, 120, 250, 120, 170, 10);
  triangle(150, 120, 250, 120, 230, 10);
  ellipse(200, 120, 100, 50);
  //3
  triangle(250, 120, 350, 120, 270, 10);
  triangle(250, 120, 350, 120, 330, 10);
  ellipse(300, 120, 100, 50);
  //4
  triangle(350, 120, 450, 120, 370, 10);
  triangle(350, 120, 450, 120, 430, 10);
  ellipse(400, 120, 100, 50);
  //5
  triangle(450, 120, 550, 120, 470, 10);
  triangle(450, 120, 550, 120, 530, 10);
  ellipse(500, 120, 100, 50);
  //6
  triangle(550, 120, 650, 120, 570, 10);
  triangle(550, 120, 650, 120, 630, 10);
  ellipse(600, 120, 100, 50);
  //7
  triangle(650, 120, 750, 120, 670, 10);
  triangle(650, 120, 750, 120, 730, 10);
  ellipse(700, 120, 100, 50);
  
  strokeWeight(3);
  if(counter < 8) {
    fill(255);
    ellipse(100, 120, 100, 50);
    ellipse(300, 120, 100, 50);
    ellipse(500, 120, 100, 50);
    ellipse(700, 120, 100, 50);
  }
  if(counter > 8) {
    fill(255);
    ellipse(200, 120, 100, 50);
    ellipse(400, 120, 100, 50);
    ellipse(600, 120, 100, 50);
  }
  if(counter == 16) {
    counter = 0;
  }
  if(speaker1 <= 150) {
    speaker1 = 165;
  }
  if(speaker2 <= 120) {
    speaker2 = 135;
  }
  //arm
  strokeWeight(15);
  line(400, 325, 300, 385);
  line(300, 385, 345, arm);
  //if(arm <= 405) {
    //arm = arm + 1;
  //}
  if(arm >= 425) {
    arm = arm - 15;
  }
}


void cab(int x, int y) {
  pushMatrix();
  translate(x, y);
  
  popMatrix();
}

void grille(int x, int y) {
  pushMatrix();
  translate(x, y);
    //grille
  fill(50);
  stroke(50);
  
  //horizontal
  line(50, 320, 250, 320);
  line(50, 330, 250, 330);
  line(50, 340, 250, 340);
  line(50, 350, 250, 350);
  line(50, 360, 250, 360);
  line(50, 370, 250, 370);
  line(50, 380, 250, 380);
  line(50, 390, 250, 390);
  line(50, 400, 250, 400);
  line(50, 410, 250, 410);
  line(50, 420, 250, 420);
  line(50, 430, 250, 430);
  line(50, 440, 250, 440);
  line(50, 450, 250, 450);
  line(50, 460, 250, 460);
  line(50, 470, 250, 470);
  line(50, 480, 250, 480);
  
  //vertical
  line(70, 300, 70, 500);
  line(80, 300, 80, 500);
  line(90, 300, 90, 500);
  line(100, 300, 100, 500);
  line(110, 300, 110, 500);
  line(120, 300, 120, 500);
  line(130, 300, 130, 500);
  line(140, 300, 140, 500);
  line(150, 300, 150, 500);
  line(160, 300, 160, 500);
  line(170, 300, 170, 500);
  line(180, 300, 180, 500);
  line(190, 300, 190, 500);
  line(200, 300, 200, 500);
  line(210, 300, 210, 500);
  line(220, 300, 220, 500);
  line(230, 300, 230, 500);
  
  //border
  fill(25);
  stroke(25);
  rect(50, 300, 10, 200);
  rect(50, 300, 200, 10);
  rect(50, 490, 200, 10);
  rect(240, 300, 10, 200);
  popMatrix();
}


void dude(int x, int y) {
  pushMatrix();
  translate(x, y);
  fill(0);
  stroke(0);
  strokeWeight(15);
  
  line(0, -25, 0, 150);
  line(0, 150, -40, 225);
  line(0, 150, 40, 225);
  line(-40, 225, -50, 295);
  line(40, 225, 50, 295);
  line(0, 25, 125, 125);
  
  
  fill(255);
  circle(0, -70, 120);
  
  strokeWeight(15);
  
  popMatrix();
}
