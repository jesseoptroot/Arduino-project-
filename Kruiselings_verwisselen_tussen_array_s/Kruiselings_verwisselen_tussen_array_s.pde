int[] array1 = {56, 4, 23, 23, 6, 23, 56};
int[] array2 = {4, 23, 99, 44, 23, 50, 14};

void setup() {
  println(array1);
  println(array2);
  wisselArray();
  println(array1);
  println(array2);
}
void wisselArray() {
  int rezervebank ;
  if (array1[0] % 2 == 0) {
    rezervebank = array2[6];
    array2[6] = array1[0];
    array1[0] = rezervebank;
  }
  if (array1[1] % 2 == 0) {
    rezervebank = array2[5];
    array2[5] = array1[1];
    array1[1] = rezervebank;
  }
  if (array1[2] % 2 == 0) {
    rezervebank = array2[4];
    array2[4] = array1[2];
    array1[2] = rezervebank;
  }
  if (array1[3] % 2 == 0) {
    rezervebank = array2[3];
    array2[3] = array1[3];
    array1[3] = rezervebank;
  }
  if (array1[4] % 2 == 0) {
    rezervebank = array2[2];
    array2[2] = array1[4];
    array1[4] = rezervebank;
  }
  if (array1[5] % 2 == 0) {
    rezervebank = array2[2];
    array2[1] = array1[5];
    array1[5] = rezervebank;
  }
  if (array1[6] % 2 == 0) {
    rezervebank = array2[0];
    array2[0] = array1[6];
    array1[6] = rezervebank;
  }
}
