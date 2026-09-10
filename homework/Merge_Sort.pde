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
  
  mergeSort(arr, 0, arr.length-1);
  
  for(i=0; i<arr.length; i++) {
    print(arr[i], " ");
  }
}

void mergeSort(int[] A, int p, int r) {
  if(p < r) {
    int q = (p+r)/2;
    mergeSort(A, p, q);
    mergeSort(A, q+1, r);
    merge(A, p, q, r);
  }
}

void merge(int[] A, int p, int q, int r) {
  int[] temp = new int[r-p+1];
  int i = p, j = q+1, t = 0;
  
  while(i<=q && j<=r) {
    if(A[i] <= A[j]) temp[t++] = A[i++];
    else temp[t++] = A[j++];
  }
  while(i<=q) temp[t++] = A[i++];
  while(j<=r) temp[t++] = A[j++];
  
  for(int k=0; k<temp.length; k++) A[p+k] = temp[k];
  
  print("merge(" + p + "," + q + "," + r + "): ");
  for(int k=0; k<arr.length; k++) print(arr[k], " ");
  println();
}

void draw() {
}
