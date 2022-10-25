void eindScherm() {
  startscherm.resize(500, 500);
  image(startscherm, 0, 0);
  fill(#000000);
  textSize(50);
  text("Einde", 190,240 );
}

/*
void isMuisBovenEindKnop() {
 if (mouseX > 175 && mouseX < 200 + 150) {
 //ga naar speelscherm
 println("start");
 toestandSpel = SPEL_BEZIG;
 } else {
 println("niet start");
 }
 }
 */
