int[] array1 = {56, 3, 23, 23, 6, 23, 56};

void setup(){
  change();
  println(array1);
}

void change() {
  int rezervebank = array1[1];
  array1[1] = array1[4];
  array1[4] = rezervebank;
};
