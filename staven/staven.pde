size(350, 200);

float[] waardes = {20.0, 190.0, 150.0};
float gemiddelde = (waardes[0] + waardes[1] + waardes[2]) / 3;
int breedteStaaf = 50;

int[] kleuren = {#ff0000, #00ff00, #0000ff, #ffffff};
int achtergrondkleur = #000000;

int aantalStaven = waardes.length;
int aantalMarges = aantalStaven + 1;
int breedteMarge = (width - (breedteStaaf * aantalStaven)) / aantalMarges;

int xPossStaaf1 = breedteMarge;
int xPossStaaf2 = (2 * breedteMarge) + breedteStaaf;
int xPossStaaf3 = (3 * breedteMarge) + (2* breedteStaaf);
float yPossText1 = height - waardes[0];
float yPossText2 = height - waardes[1];
float yPossText3 = height - waardes[2];


int yPossStaven = height - 1;
float yPossGemiddelde = height - gemiddelde;
background(achtergrondkleur);

fill(kleuren[0]);
rect(xPossStaaf1, yPossStaven, breedteStaaf, -waardes[0]);
text(waardes[0], xPossStaaf1, yPossText1);

fill(kleuren[1]);
rect(xPossStaaf2, yPossStaven, breedteStaaf, -waardes[1]);
text(waardes[1], xPossStaaf2, yPossText2);

fill(kleuren[2]);
rect(xPossStaaf3, yPossStaven, breedteStaaf, -waardes[2]);
text(waardes[2], xPossStaaf3, yPossText3);

fill(kleuren[3]);
rect(0, yPossGemiddelde, width, -2);
