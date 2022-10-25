void setup() {
  size(500, 500);
}


void draw() {
background(000000);
String mouseLocatie = mouseX+","+mouseY;
int textPossX = height / 2;
int textPossY = width / 2;
 
fill(#ffffff);
text(mouseLocatie, textPossX, textPossY);
};
