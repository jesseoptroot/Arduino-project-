void startscherm() {
  startscherm.resize(500, 500);
  image(startscherm, 0, 0);
  startknop();
}

void isMuisBovenStartKnop() {
  if (mouseX > 175 && mouseX < 200 + 150) {
    //ga naar speelscherm
    println("start");
    toestandSpel = SPEL_BEZIG;
  } else {
    println("niet start");
  }
}
