/*
0 = blauw
 1 = rood
 2 = groen
 3 = geel
 4 = wit
 */
int[][] mariowereld = {
  {0, 0, 4, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 4}, 
  {0, 0, 0, 4, 0, 0, 0, 0, 0, 4, 4, 0, 0, 0, 0}, 
  {0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0}, 
  {0, 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 1, 1, 0}, 
  {0, 3, 0, 3, 0, 2, 0, 0, 0, 0, 0, 1, 1, 1, 0}, 
  {1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0}
};

final int ZIJDE = 32;
int kleur;
int beginPosX = 0;




void setup() {
  size(500, 500);
  frameRate(30);
}
void draw() {
  background(#FFFFFF);
  tekenLevel(ZIJDE, mariowereld);
  if (beginPosX > -(ZIJDE * mariowereld[0].length - width)) {
    beginPosX--;
  } else {
    beginPosX = 0;
  }
}
void tekenLevel(int zijde, int[][] level) {
  int breedteSpelScherm = width;
  int hoogteSpelScherm = zijde * level.length;
  int beginPosY = (height - hoogteSpelScherm) / 2;
  tekenAchtergrond(beginPosY, breedteSpelScherm, hoogteSpelScherm);
  for (int rijNr = 0; rijNr < level.length; rijNr++) {
    tekenCellRij(rijNr, level[rijNr], zijde, beginPosX, beginPosY);
  }
}



void tekenAchtergrond(int beginPosY, int breedteSpelScherm, int hoogteSpelScherm) {
  fill(#079bb0);
  rect(0, beginPosY, breedteSpelScherm, hoogteSpelScherm);
}



void tekenCellRij(int rijNr, int[] cellRij, int zijde, int beginPosX, int beginPosY) {
  for (int kolomNr = 0; kolomNr < cellRij.length; kolomNr++) {
    tekenCell(kolomNr, rijNr, beginPosX, beginPosY, zijde, cellRij[kolomNr]);
  }
}



void tekenCell(int kolomNr, int rijNr, int beginPosX, int beginPosY, int zijde, int cellWaarde) {
  int xPos = beginPosX + (kolomNr * zijde);
  int yPos = beginPosY + (rijNr * zijde);
  kleurCell(cellWaarde);
  fill(kleur);
  if (cellWaarde != 0) {
    if (cellWaarde == 3) {
      circle(xPos + (zijde / 2), yPos + (zijde / 2), zijde / 2);
    } else if (cellWaarde == 4) {
      square(xPos, yPos, zijde);
    } else if (cellWaarde == 1) {
      square(xPos, yPos, zijde);
    } else {
      square(xPos, yPos, zijde);
    }
  }
}



void kleurCell(int cellWaarde) {
  switch(cellWaarde) {


  case 1:
    kleur = #000000;
  case 2: 
    kleur = #b22222 ;
    break;
  case 3: 
    kleur = #ffff00;
    break;
  case 4: 
    kleur = #ffffff;
  }
}
