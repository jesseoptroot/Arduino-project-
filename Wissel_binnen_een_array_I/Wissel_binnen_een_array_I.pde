int[] array1 = {56, 3, 23, 23, 6, 23, 56};
int rezerveBank;

println(array1);

rezerveBank = array1[1];
array1[1] = array1[4];
array1[4] = rezerveBank;

println(array1);
