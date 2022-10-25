int BreetheRaket = 10;
int HoogteRaket = 50;
int yStartpositieRaket;

void setup() {
size(1000, 1000);
yStartpositieRaket = height - HoogteRaket;
}

void draw() {
background(#000000);
tekenRaket(500, yStartpositieRaket);
yStartpositieRaket--;
}

void tekenRaket(int xPosRaket, int yPossRaket) {
  
// breethe en hooght van de raket


//driehoek netjes boven op de vierkant
int positieDriehoekX1 = xPosRaket; 
int positieDriehoekY1 = yPossRaket; 

//driehoek beweegt mee met de vierkant
int positieDriehoekX2 = positieDriehoekX1 + BreetheRaket; 
int positieDriehoekY2 = positieDriehoekY1; 

//de driehoek blijft de zelfde schaal ook al verandert de vierkant
int positieDriehoekX3 = (positieDriehoekX1 + positieDriehoekX2) / 2;
int hoogteDriehoek = HoogteRaket / 2;
int positieDriehoekY3 = positieDriehoekY1 - hoogteDriehoek ; 

//de viekant
rect(xPosRaket,yPossRaket,BreetheRaket,HoogteRaket);

//de driehoek
triangle(positieDriehoekX1, positieDriehoekY1, positieDriehoekX2,positieDriehoekY2, positieDriehoekX3, positieDriehoekY3);
}
