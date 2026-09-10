int[] arr;

void setup() {
  int i;
  arr = new int[16];
  for(i=0; i<arr.length; i++) {
    arr[i] = (int) random(100);
  }
  for(i=0; i<arr.length; i++) {
    print(arr[i], " ");
  }
  println();
  
  quickSort(arr, 0, arr.length-1);
  
  for(i=0; i<arr.length; i++) {
    print(arr[i], " ");
  }
}

void quickSort(int[] A, int p, int r) {
  if(p < r) {
    int q = partition(A, p, r);
    quickSort(A, p, q-1);
    quickSort(A, q+1, r);
  }
}

int partition(int[] A, int p, int r) {
  int pivot = A[r];
  int i = p - 1;
  
  for(int j=p; j<r; j++) {
    if(A[j] < pivot) {
      i++;
      int tmp = A[i]; A[i] = A[j]; A[j] = tmp;
    }
  }
  int tmp = A[i+1]; A[i+1] = A[r]; A[r] = tmp;
  
  print("pivot=" + pivot + ": ");
  for(int k=0; k<arr.length; k++) print(arr[k], " ");
  println();
  
  return i+1;
}

void draw() {
}
