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
  
  insertionSort(arr);
  
  for(i=0; i<arr.length; i++) {
    print(arr[i], " ");
  }
}

void insertionSort(int[] A) {
  for(int i=1; i<A.length; i++) {
    int key = A[i];      // 삽입할 값을 복사
    int j = i - 1;
    
    // key보다 큰 값들은 한 칸씩 오른쪽으로 밀기
    while(j>=0 && A[j]>key) {
      A[j+1] = A[j];
      j--;
    }
    A[j+1] = key;         // 빈 자리에 key 삽입
  }
}

void draw() {
}
