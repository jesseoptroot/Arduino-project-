float xPosBug = random(450);
float yPosBug = random(450);
int AfmetingenBug = 50;
int bugkleur = #00ff00;
float bugSnelheid = 0.5;
boolean richtingBug ;

void tekenBug(float xPos, float yPos, int afmeting, int kleur) {
  fill(kleur);
  rect(xPos, yPos, afmeting, afmeting);
  //image(ant,0,0);
}

void beweegBug() {
  if (xPosBug <250) {
    richtingBug = true;
  } else if (xPosBug > 250) {
    richtingBug = false;
  }
}

void richtingBug(float snelheid) {
  if (richtingBug == true) {
    xPosBug = xPosBug + snelheid;
  } else if (richtingBug == false) {
    xPosBug = xPosBug - snelheid;
  }
}

void isMuisBovenBug() {
  if (mouseX > xPosBug && mouseX < xPosBug + 50) {
    //verhoogScore(1);
    squashBug();
  } else {
    println("mis");
    /*
    na 30 seconden
    toestandSpel = EINDSCHERM;
    */
  }
}

void squashBug() {
  bugkleur = #ff0000;
  bugSnelheid = bugSnelheid + 0.2;
}
