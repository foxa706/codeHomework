PImage bg;
PShape geo;
int i = 0;
float x, y; // the size of the obj
float size;
float speed;

float eX= 0.0;
// float y= 0.0;

float easing = 0.7;
// number 0.0 to 1.0

float angle = radians(60);

void setup(){
  size(1680, 1057);
  bg = loadImage("bg.png");
  geo = loadShape("geo.svg");
  speed = 0.04;
  size = 800;
}

void draw(){
  float targetX = x;
  float dx = targetX - eX;
  
  background(bg);
  
  x = abs(sin(frameCount*speed)*size/3);
  y = abs(cos(frameCount*speed)*size/2);
  
  if(abs(dx) > 1.0) {
  eX += dx * easing;
  }
   
  rotate(angle/6); 
  shape(geo, 50, 250, (600 +(x+eX)), (600 +(y+eX)));
  //shape(geo, eX-300, 600, x+300, y+300); --EARLIER SCALING VERSION
// saves each frame
/*if(i<400){
saveFrame("img######.png"); 
i++;
}*/
}

