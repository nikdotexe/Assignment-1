# Assignment-1
int x= 575;
int w= 575;
int y= 545;
int z= 515;

void setup() {
  size (600, 600);
  background(25, 220, 255);
  fill(219, 219, 219);
  textSize (32);
  text ("Processing Assignment 1", 10, 30);
  fill(58, 60, 61);
  rect(400,500,200,150);
  textSize(16);
  fill(96, 255, 144);
  text ("Instructions", 447, 515, 140, 130);
  fill (0, 195, 255);
  text ("Math Game", 450, 545, 140, 130);
  fill (255, 25, 0);
  text ("Non-Math Game", 410, 575, 190, 130);
}

void intro() {
  background(255, 165, 140);
  fill(219, 219, 219);
  textSize (32);
  text ("Processing Assignment 1", 10, 30);
  textSize (16);
  text ("Welcome to my Game", 6, 60);
  text ("Click on the buttons on the side of the screen to choose your game type.", 5, 80);
}

void draw() {

  noStroke();
  fill (255, 25, 0);
  rect (w, x, 25, 25);
  fill (0, 195, 255);
  rect (w, y, 25, 25);
  fill (96, 255, 144);
  rect (w, z, 25, 25);

  if (mouseX> x && mouseY > z && mousePressed) {
    intro();
    textSize(16);
    text ("Instructions", 447, 515, 140, 130);
    fill (255);
    text ("Math Game", 450, 545, 140, 130);
    fill (0);
    text ("Non-Math Game", 410, 575, 190, 130);
  }
  if (mouseX> x && mouseY > y && mousePressed) {
    background (0);
    textSize(16);
    text ("Instructions ", 447, 515, 140, 130);
    fill (255);
    text ("Math Game-->", 450, 545, 140, 130);
    fill (0);
    text ("Non-Math Game-->", 410, 575, 190, 130);
  }
  if (mouseX> x && mouseY > w && mousePressed) {
    background (255);
    textSize(16);
    text ("Intro--> ", 500, 515, 140, 130);
    fill (255);
    text ("Math Game-->", 450, 545, 140, 130);
    fill (0);
    text ("Non-Math Game-->", 410, 575, 190, 130);
  }
}
