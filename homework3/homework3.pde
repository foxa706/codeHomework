PImage source, destination;

void setup() {
  source = loadImage("1.jpg");
  size(source.width, source.height);
  destination = warp(source);
}

void draw(){
PImage warp(PImage source)
{
 float waveAmplitude = 20, // pixels
       numWaves = 5;       // how many full wave cycles to run down the image
 int w = source.width, h = source.height;
 PImage destination = new PImage(w,h);
 source.loadPixels();
 destination.loadPixels();

 float yToPhase = 2*PI*numWaves / h; // conversion factor from y values to radians.

 for(int x = 0; x < w; x++)
   for(int y = 0; y < h; y++)
   {
     // In a 100-pixel radius circle around the center, apply a sine-wave transform.
     if(sqrt((x-width/2)*(x-width/2) + (y-height/2)*(y-height/2)) < 100)
     {
       int newX, newY;
       newX = int(x + waveAmplitude*sin(y * yToPhase));
       newY = y;
       color c;
       if(newX >= w || newX < 0 ||
          newY >= h || newY < 0)
         c = color(0,0,0);
       else
         c = source.pixels[newY*w + newX];
       destination.pixels[y*w+x] = c;
     }
     else // everywhere else, just copy pixels straight over.
       destination.pixels[y*w+x] = source.pixels[y*w+x];
   }
 return destination;
}

/*
PImage source, destination;
int w = 1;
int c = 0;

void setup() {
  source = loadImage("1.jpg");
  size(source.width, source.height);
  noLoop();
  destination = warp(source);
}
  
void draw(){
 // vertical wave warp.
  PImage warp(PImage source){
  float waveAmplitude = w, // pixels
       numWaves = i;       // how many full wave cycles to run down the image
   int w = source.width, h = source.height;
   PImage destination = new PImage(w,h);
   source.loadPixels();
   destination.loadPixels();
   
       
   if(c > 0) {
        w ++;
   }


   float yToPhase = 2*PI*numWaves / h; // conversion factor from y values to radians.

   for(int x = 0; x < w; x++)
     for(int y = 0; y < h; y++)
     {
       int newX, newY;
       newX = int(x + waveAmplitude*sin(y * yToPhase));
       newY = y;
       color c;
       if(newX >= w || newX < 0 ||
          newY >= h || newY < 0)
          c = color(0,0,0);
       else
         c = source.pixels[newY*w + newX];
       destination.pixels[y*w+x] = c;
     }
     {
     image(destination, 0, 0);
     }
   return destination;
   
}*/

