float startAngle = 0;
float angleVel = 0.15;

void setup() {
  size(700, 400);
  smooth();
}
  
void draw() {
  background(200);
  startAngle += 0.05;
  float angle = startAngle;
  
  for (int x = 0; x <= width; x += 11) {
    float y = map(sin(angle),-1,1,0,height);
      if(x%2 == 0){
        strokeWeight(2);
        stroke(0,random(255), 255, 30);
        line( x, y, mouseX, mouseY);
        angle += angleVel;
      }
        
      else{
        noFill();
        strokeWeight(3);
        stroke(0,random(255), 255, 50);
        ellipse( x, y, mouseX, mouseY);
        angle += angleVel;
      }
  } 
}
