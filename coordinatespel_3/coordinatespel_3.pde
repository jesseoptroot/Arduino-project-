int xpos = mouseX;
int ypos = mouseY;


void setup() {
  size(300, 300);
  background(#ffff00);
}

void draw() {
  background(#ffff00);
  textAlign(CENTER);
  roodTekst((width / 2), height / 2);
}

void mouseClicked() {
  xpos = mouseX;
  ypos = mouseY;
}

void roodTekst(int xmid, int ymid) {
  //println(xpos, ypos);
  if (xpos % 2 ==0 && ypos % 2 ==0) {
    fill(#ff0000);
    text("Xpos = " + xpos + ", Ypos = " + ypos, xmid, ymid);
  }
}
