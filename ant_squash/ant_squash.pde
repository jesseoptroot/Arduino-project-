final int STARTSCHERM = 0;
final int SPEL_BEZIG = 1;
final int EINDSCHERM = 2;
PImage ant ;
PImage startscherm ;
PImage startKnop ;

int toestandSpel;

void setup() {
  size(500, 500);
  toestandSpel = STARTSCHERM;
  ant = loadImage("ant.jpg");
  startKnop = loadImage("startKnop.png");
  startscherm = loadImage("startscherm.jpg");
}

void draw() {
  switch(toestandSpel) {
  case STARTSCHERM:
    // handel tekenwerk startscherm af
    startscherm();
    break;
  case SPEL_BEZIG:
    spelScherm();
    tekenBug(xPosBug, yPosBug, AfmetingenBug, bugkleur);
    beweegBug();
    break;
  case EINDSCHERM:
    // handel tekenwerk eindscherm af
    eindScherm();
    break;
  }
}

void mousePressed() {
  switch(toestandSpel) {
  case STARTSCHERM:
    // handel interactie startscherm af
    //handelInteractieStartSchermAf();
    isMuisBovenStartKnop();
    break;
  case SPEL_BEZIG:
    // handel interactie spel af
    // iets van eindtijdBereikt dan toestandSpel = EINDSCHERM
    isMuisBovenBug();
    richtingBug(bugSnelheid);
    break;
  case EINDSCHERM:
    // handel interactie eindscherm af
    // iets van alsMuisBovenKnop dan toestandSpel = STARTSCHERM
    break;
  }
}
