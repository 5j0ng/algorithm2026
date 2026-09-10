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
  
  heapSort(arr, arr.length);
  
  for(i=0; i<arr.length; i++) {
    print(arr[i], " ");
  }
}

void heapSort(int[] A, int n) {
  buildHeap(A, n);
  for(int i=n-1; i>=1; i--) {
    int tmp = A[0]; A[0] = A[i]; A[i] = tmp;
    heapify(A, 0, i);
    
    print("i=" + i + ": ");
    for(int k=0; k<A.length; k++) print(A[k], " ");
    println();
  }
}

void buildHeap(int[] A, int n) {
  for(int i=n/2-1; i>=0; i--) {
    heapify(A, i, n);
  }
}

void heapify(int[] A, int i, int n) {
  int largest = i;
  int left = 2*i+1;
  int right = 2*i+2;
  
  if(left<n && A[left]>A[largest]) largest = left;
  if(right<n && A[right]>A[largest]) largest = right;
  
  if(largest != i) {
    int tmp = A[i]; A[i] = A[largest]; A[largest] = tmp;
    heapify(A, largest, n);
  }
}

void draw() {
}
