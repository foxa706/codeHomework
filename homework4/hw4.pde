float value = 0.5;
PImage img;
 
  void setup(){
    img = loadImage("1.jpg");
    size(600,600);
    frameRate(2);
    background(1, 199, 200, 220);

  }

  void draw(){
    
    int weight = int(random(2, 5));
    strokeWeight(weight);
    stroke(255, 20);
    float w= width/2;
    //create and set our variables for the polygon
    float sideIncrement = 0;
    float sideIncrement2 = 0;
    float sideIncrement3 = 0;
    float shapeRadius = w/2;
    float shapeRadius2 = w/4;
    float shapeRadius3 = w;
    float numberOfSides = int(random(HALF_PI, 10));

      
    beginShape();
      noFill();
      //
      while (sideIncrement < TWO_PI) {

        float xPos = sin(sideIncrement)*shapeRadius;
        float yPos = cos(sideIncrement)*shapeRadius;

        vertex(xPos+width*value, yPos+height*value);

        sideIncrement += TWO_PI/numberOfSides;
      }

    endShape(CLOSE);

    beginShape();
    noFill();
      //
      while (sideIncrement2 < TWO_PI) {

        float xPos = sin(sideIncrement2)*shapeRadius2;
        float yPos = cos(sideIncrement2)*shapeRadius2;

        vertex(xPos+width*.5, yPos+height*.5);

        sideIncrement2 += TWO_PI/numberOfSides;
      }



    endShape(CLOSE);
    
    beginShape();
      noFill();
      //
      while (sideIncrement3 < TWO_PI) {

        float xPos = sin(sideIncrement3)*shapeRadius3;
        float yPos = cos(sideIncrement3)*shapeRadius3;

        vertex(xPos+width*value, yPos+height*value);

        sideIncrement3 += TWO_PI/numberOfSides;
      }

    endShape(CLOSE);


  }
  
  void mousePressed(){
    imageMode(CENTER);
    tint(255, 12);
    image(img, 0, 600, 1200, 1200);

      }

