float getal1 = 3.1;
float getal2 = 5.7;
void setup(){
float waarde1 = berekenWaarde1();
float waarde2 = berekenWaarde2();
println(waarde1);
println(waarde2);
}
float berekenWaarde1(){
return 10 * (getal1 + 1);
}
float berekenWaarde2(){
return 10 * (getal2 + 1);
}
