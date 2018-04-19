void setup() {
 size (600, 600);
  background(25, 220, 255);
  fill(219, 219, 219);
  textSize (32);
  text ("Processing Assignment 1", 10, 30);
  fill(58, 60, 61);
  rect(400, 500, 200, 150);
  textSize(16);
  fill(96, 255, 144);
  text ("Instructions", 447, 515, 140, 130);
  fill (0, 195, 255);
  text ("Math Game", 450, 545, 140, 130);
  fill (255, 25, 0);
  text ("Non-Math Game", 410, 575, 190, 130);
}

//instructions
void intro() {
  background(96, 255, 144);
  fill(0);
  //top of the screen
  fill(75, 77, 79);
  rect(0, 48, 579, 50);
  fill(94, 96, 99);
  rect(2, 50, 575, 46);
  //textbox
  fill(75, 77, 79);
  rect(0, 0, 409, 50);
  fill(94, 96, 99);
  rect(2, 2, 405, 46);
  textSize (32);
  fill(255);
  text ("Processing Assignment 1", 10, 30);
  textSize (16);
  text ("Welcome to my Game", 6, 70);
  text ("Click on the buttons on the side of the screen to choose your game type.", 5, 90);
  noStroke();
  fill (255, 25, 0);
  rect (w, x, 25, 25);
  fill (0, 195, 255);
  rect (w, y, 25, 25);
  fill (96, 255, 144);
  rect (w, z, 25, 25);
}


//function for input sections(Math Game)
void keyPressed() {
}

//Variables for the rectangles
int x= 575;
int w= 575;
int y= 545;
int z= 515;

//Variables for math game
int a= int(random(10));
int b= int(random(10));
int c= int(random(2));
int d= a+b;
int e= a-b;
int f= a*b;
int answer;

//variables for non-math game
int g= int(random(600));
int h= int(random(600));


void draw() {
  //rectangle boxes(buttons)
 noStroke();
  fill (255, 25, 0);
  rect (w, x, 25, 25);
  fill (0, 195, 255);
  rect (w, y, 25, 25);
  fill (96, 255, 144);
  rect (w, z, 25, 25);

  if (mouseX> x && mouseY > z && mousePressed) {
    //background and colour/text settings
    intro();
    fill(58, 60, 61);
    rect(400, 500, 200, 150);
    textSize(16);
    fill(96, 255, 144);
    text ("Instructions", 447, 515, 140, 130);
    fill (0, 195, 255);
    text ("Math Game", 450, 545, 140, 130);
    fill (255, 25, 0);
    text ("Non-Math Game", 410, 575, 190, 130);
  }
  if (mouseX> x && mouseY > y && mousePressed) {
    //background and colour/text settings
      background (0, 195, 255);
    fill(75, 77, 79);
    rect(0, 0, 200, 50);
    fill(94, 96, 99);
    rect(2, 2, 196, 46);
    fill(58, 60, 61);
    rect(400, 500, 200, 150);
    textSize(16);
    fill (255);
    text ("Math Game", 56, 30);
    fill(96, 255, 144);
    text ("Instructions", 447, 515, 140, 130);
    fill (0, 195, 255);
    text ("Math Game", 450, 545, 140, 130);
    fill (255, 25, 0);
    text ("Non-Math Game", 410, 575, 190, 130);

    //Math Game
    fill(255);
    textSize(16);
    text (a, 20, 20);
    text (b, 50, 20);

    //addition
    if (c==0) {
      //formatting
      fill(255);
      textSize(16);
      text ("+", 35, 20);
      //equation: input and check
      answer = d;
    }
    //subtraction
    if (c==1) {
      //formatting
      fill(255);
      textSize(16);
      text ("-", 35, 20);
      //equation: input and check
      answer = e;
    }    

    //multiplication
    if (c==2) {
      //formatting
      fill(255);
      textSize(16);
      text ("x", 35, 20);
      //equation: input and check
      answer = f;
    }
  }

  if (mouseX> x && mouseY > w && mousePressed) {
    //background and colour/text settings
    background (255, 25, 0);
    fill(75, 77, 79);
    rect(0, 0, 200, 76);
    fill(94, 96, 99);
    rect(2, 2, 196, 72);
    fill(58, 60, 61);
    rect(400, 500, 200, 150);
    textSize(16);
    fill (255);
    text ("Non-Math Game", 35, 30);
    fill(96, 255, 144);
    text ("Instructions", 447, 515, 140, 130);
    fill (0, 195, 255);
    text ("Math Game", 450, 545, 140, 130);
    fill (255, 25, 0);
    text ("Non-Math Game", 410, 575, 190, 130);

    //Non-Math Game
    //setup
    fill (255);
    textSize(16);
    text("Click on the circles", 25, 60);
    //actual game
    fill (random(255),random(255),random(255));
    ellipse (g, h, 30, 30);
    if (mouseX > g-100 && mouseX < g+100 && mouseY > h-100 && mouseY < h+100 && mousePressed) {
      fill(0);
      textSize(15);
      text("good job", 20, 20);
    }
  }
}