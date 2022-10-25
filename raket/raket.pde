size(1000, 1000);
background(#000000);

//positie raket
int xPosRaket = 200;
int yPossRaket = 500;

// breethe en hooght van de raket
int BreetheRaket = 100;
int HoogteRaket = 200;

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

//tekst
fill(#ff0000);
text("hoi",xPosRaket + 3,yPossRaket + 20);
