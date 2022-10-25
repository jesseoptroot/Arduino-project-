size(1000, 500);
 
int breedteVlag = 900;
int hoogteVlag = breedteVlag / 2;
int positieVlagX = 10;
int positieVlagY = 10;
int diametercirkel = breedteVlag / 3;
int middelpuntvlagX = (breedteVlag / 2) + positieVlagX;
int middelpuntvlagY = (hoogteVlag / 2) + positieVlagY;
String textOpVlag = "Nippon";

rect(positieVlagX,positieVlagY,breedteVlag,hoogteVlag);
 
fill(#bc002d); // Crimson glory
ellipse(middelpuntvlagX, middelpuntvlagY, diametercirkel, diametercirkel);
 
fill(#000000);
textSize(diametercirkel / 5);
textAlign(CENTER, CENTER);
text(textOpVlag, middelpuntvlagX, middelpuntvlagY);
