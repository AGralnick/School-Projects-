PImage img;
int pointillize = 5;

void setup() {
  size(900,425);
  frameRate(10000);
  img = loadImage("Supper.jpg");
  background(255);
  smooth();
}

void draw() {
  
  // Pick a random point
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y*img.width;
  
  // Look up the RGB color in the source image
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  //int avg = (int)((r+g+b)/3);
  // Back to shapes! Instead of setting a pixel, we use the color from a pixel to draw a circle.
  noStroke();
  fill(r,g,b,100);
  ellipse(x,y,pointillize,pointillize);
}