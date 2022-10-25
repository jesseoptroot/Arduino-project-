size(1000, 1000);

int BreetheHuis = 500;
int HoogteHuis = 500;
int positieHuisX = 300;

int positieHuisY = height - BreetheHuis - 1;

int positieDriehoekX1 = positieHuisX; 
int positieDriehoekY1 = positieHuisY; 

int positieDriehoekX2 = positieDriehoekX1 + BreetheHuis; 
int positieDriehoekY2 = positieDriehoekY1; 

int positieDriehoekX3 = (positieDriehoekX1 + positieDriehoekX2) / 2;
int hoogteDriehoek = HoogteHuis / 2;
int positieDriehoekY3 = positieDriehoekY1 - hoogteDriehoek ; 

rect(positieHuisX,positieHuisY,BreetheHuis,HoogteHuis);

triangle(positieDriehoekX1, positieDriehoekY1, positieDriehoekX2,positieDriehoekY2, positieDriehoekX3, positieDriehoekY3);
