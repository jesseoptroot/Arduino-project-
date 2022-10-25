void setup(){
 size(500,500);
 background(#000000);
 tekenDartbord(#ff0000, #ffffff);
}

void tekenDartbord (int rood, int wit) {
  fill(rood);
tekenCirkel(250, 250 ,100);
  fill(wit);
tekenCirkel(250, 250 ,75);
  fill(rood);
tekenCirkel(250, 250 ,50);
  fill(wit);
tekenCirkel(250, 250 ,25);

}

void tekenCirkel(int xpos, int ypos, int diameter){
circle(xpos,ypos,diameter);
circle(xpos,ypos,diameter);
circle(xpos,ypos,diameter);
circle(xpos,ypos,diameter);
}
