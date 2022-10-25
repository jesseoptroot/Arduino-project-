String[] boodschappen = { "brood", "melk", "eieren,spinazie", "rijst", "zalm", "chocolade", "appels", "kaas" };

void setup() {
  drukAf();
};

void drukAf() {
  for(int i=0; i< boodschappen.length; i++){
  print(boodschappen[i] +", ");
  }
};
