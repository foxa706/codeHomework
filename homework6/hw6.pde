int[] picNumber = new int[5];
String picName;
PImage pic;

void setup(){
  size(600, 600);
  background(50,0, 150);
}


void draw(){ 
  if (mousePressed){
    for(int i=0; i<picNumber.length; i++){
    picName = (i + ".png");
    pic = loadImage(picName); 
    image(pic, random(-100,600), mouseY);
  }  
  }
} 


