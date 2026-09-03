int[] list = {2,5,7,0};
println("hello world");

for (int i = 0; i < list.length - 1; i++) {
  for (int j = 0; j < list.length - 1 - i; j++) {
    if (list[j] > list[j+1]) {
      int temp = list[j];
      list[j] = list[j+1];
      list[j+1] = temp;
    }
  }
}
list = new int[10000]; 
int i, j, index, tmp, max;
for (i = 0; i < list.length; i++) {
  list[i] = (int) random(10000);
}
println();

for (i = 0; i < list.length; i++) {
  print(list[i], " ");
}
for (i = 0; i < list.length; i++) {
  max = index = -1;
  for (j = 0; j < list.length - i - 1; j++) {
    if (max < list[j]) {
      max = list[j];
      index = j;
    }
  }
  if (index != -1) {
    tmp = list[j];
    list[j] =max;
    list[index] = tmp;
   
  };
};

for (i = 0; i < list.length; i++) {
  print(list[i], " ");
}
println();
