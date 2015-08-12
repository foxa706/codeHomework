PImage bug;
int y = -50;

void setup(){
  size(600, 600);
  bug = loadImage("beetle.png");
  background(255, 190, 190);
}

void draw(){
  for (int i=-50; i<600; i = i+50){
    y= y+10;
    image(bug, i, y );
  }
}
