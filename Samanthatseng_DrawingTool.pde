float oldX;
float oldY;
color white= color(255);
color black= color(0);
float masterStroke= 1;
 
 
void setup(){
  size(800,800);
  smooth();
  background(255);
   
}
 
void draw(){
  strokeWeight(1);
  rect(35, 110, 25, 25);
  fill(white);
  rect(10, 135, 25, 25);
  fill(black);
  rect(35, 135, 25, 25);
  line(450, 30, 500, 30);
  strokeWeight(4);
  line(450, 50, 500, 50);
  strokeWeight(8);
  line(450, 80, 500, 80);
  strokeWeight(1);
  fill(255);
  rect(250, 10, 50, 50);
   
  if(mousePressed) {
    if(mouseX > 10 && mouseX < 35){
      if(mouseY>135 && mouseY<160){
        stroke(white);
      }
      if(mouseY >135 && mouseY <160){
        stroke(black);
      }
    }
    if(mousePressed){
      if(mouseX > 450 && mouseX <500){
        if(mouseY >10 && mouseY <40){
          masterStroke= 1; }
        }
      if(mouseX > 450 && mouseX <500){
        if(mouseY >40 && mouseY <70){
          masterStroke= 4; }
      }
      if(mouseX > 450 && mouseX <500){
        if(mouseY > 70 && mouseY <100){
          masterStroke= 7;
      } 
    }
    strokeWeight(masterStroke);
    }
  if(mousePressed){
    if(mouseX > 250 && mouseX <300){
      if (mouseY > 10 && mouseY <60){
        background(255);
      }
    }
  }
  if(mousePressed){
  line(mouseX, mouseY, oldX, oldY);
  }
  }
  oldX=mouseX;
  oldY=mouseY;
  }