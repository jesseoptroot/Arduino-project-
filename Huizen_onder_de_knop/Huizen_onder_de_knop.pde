int BreetheHuis = 25;
int HoogteHuis = 25;
int positieHuisX = 10;

int positieHuisY = height - BreetheHuis - 1;

int positieDriehoekX1 = positieHuisX; 
int positieDriehoekY1 = positieHuisY; 

int positieDriehoekX2 = positieDriehoekX1 + BreetheHuis; 
int positieDriehoekY2 = positieDriehoekY1; 

int positieDriehoekX3 = (positieDriehoekX1 + positieDriehoekX2) / 2;
int hoogteDriehoek = HoogteHuis / 2;
int positieDriehoekY3 = positieDriehoekY1 - hoogteDriehoek ; 

void setup() {
  size(500, 500);
  background(#2271b3 );
  tekenHuis();
}

void draw() {  
  background(#2271b3 );
  tekenHuis();
}

void tekenHuis() {
  if (mouseX <= width/2  && mouseY <= height/2) {
    rect(positieHuisX, positieHuisY, BreetheHuis, HoogteHuis);

    triangle(positieDriehoekX1, positieDriehoekY1, positieDriehoekX2, positieDriehoekY2, positieDriehoekX3, positieDriehoekY3);
  } else {
    rect(400, 400, BreetheHuis, HoogteHuis);
    triangle(400,400,400 + BreetheHuis,400,(400 + (400 + BreetheHuis)) / 2,400 - hoogteDriehoek );
  }
}
