color hue1, hue2;
int yAxis=1;

void setup(){
size(600, 600);
hue1= color(0, 50, 150);
hue2= color(0, 255, 100);

int b=0;

noLoop();
}

void draw(){
  setGradient(0, 0, width, height, hue1, hue2, yAxis);
  drawRect();
  
}


void setGradient(int x, int y, float w, float h, color hue1, color hue2, int axis){
   noFill();
    
  if (axis == yAxis){
    for (int i = y; i <= y+h; i++) {
      float val = map(i, y, y+h, 0, 1);
      color c = lerpColor(hue1, hue2, val);
      stroke(c);
      line(x, i, x+w, i);
     }
   }
}

void drawRect(){
  for(int b=0; b<600; b= b+6){
    stroke(255);
    line(b, 100, b, 500);
    stroke(0, 255, 255, 150);
    line(100, b, 500, b);
    noFill();
  }
}

