int x = 0;
int y = 200;
float x1 = 600;
int x2 = 0;
int y1 = 300;
PImage goodguy1;
PImage badguy1;
PImage explosion1;
int bg = 0;
int bg1 = 4;
int bg2 = 10;
int ex = 0;
boolean explosion = false;
boolean isBackgroundChanging = true;

void setup()
{
  size(800, 800);
  goodguy1 = loadImage("Spaceship1.png");
  badguy1 = loadImage("Spaceship2.png");
  explosion1 = loadImage("explosion.png");
}
void draw()
{
  if (isBackgroundChanging == true) {background(random(255), random(255), random(255));}
  image(goodguy1, x1, y);
  image(badguy1, x2, y1);
  noStroke();
  x = x + 1;
  x2 = x2 + 1;
  x1 = x1 - 1;
  noStroke();
  if (x2 > 300) {
    x2 = -1600;
    noStroke();
    background(0);
    print("Rip");
    isBackgroundChanging = false;
    image(explosion1, 150 + ex, 100, 600, 600);
    ex = ex + 1;
  }
  if (x1 < 300) {
    x1 = -1600;

    // image(myimg2, 100, 200);
  } else if (x1 <= 290)
  {
    explosion = true;
  }

  if (explosion == true) {
    noStroke();
    background(0);
    print("Rip");
    isBackgroundChanging = false;
    image(explosion1, 400 + ex, 200+ ex);
    ex = ex + 1;
    background(0);
  }
}