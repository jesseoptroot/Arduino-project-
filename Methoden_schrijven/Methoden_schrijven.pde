//ligtGetalTussen validator
int onder = 1;
int boven = 100;

//isGetalDeelbaarDoorVijf validator
int deelbaar = 0;

//test som
int tussenSom = 10 + 15;
int deelSom = 25 % 5;

//uitvoer Methode
void setup(){
 ligtGetalTussen(tussenSom);
 isGetalDeelbaarDoorVijf(deelSom);
}

//ligtGetalTussen Methode
void ligtGetalTussen(int getal) {
println(onder < getal && boven > getal);

}

//isGetalDeelbaarDoorVijf Methode
void isGetalDeelbaarDoorVijf(int getalTwee){
println(getalTwee == deelbaar);
  
 }
