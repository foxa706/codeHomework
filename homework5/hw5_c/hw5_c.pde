PImage lily;
PImage bg;

int x = 0;
int y = 0;


void setup(){
    size(600, 600);
    bg = loadImage("bg.jpg");
    lily = loadImage("lily.png"); 
    image(bg, 0, 0);

}

void draw(){

  for (int a = 0; a < 600; a= a+40){
        
    line(x,y+a, x+(a+20), y+a);
    stroke(255, 255, 100); 
    strokeWeight(2); 
    
    line(x+a, y, x+a, y+(a+20));
    stroke(255, 255, 100); 
    strokeWeight(2);
    
    image(lily, a+(width/2), a+(height/2));
    image(lily, a-(width/2), a-(height/2));
    image(lily, a+(width/2), a);
    image(lily, a, a+(height/2)); 

  }

}
