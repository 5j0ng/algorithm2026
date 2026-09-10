int[] arr = {20, 12, 12, 5};

void setup() {
  int i, j, tmp;
  
  for(i=0; i<arr.length; i++) {
    print(arr[i], " ");
  }
  println();
  
  for(i=0; i<arr.length-1; i++) {          // Pass 횟수
    for(j=0; j<arr.length-1-i; j++) {      // 인접한 두 값 비교
      if(arr[j] > arr[j+1]) {
        tmp = arr[j];
        arr[j] = arr[j+1];
        arr[j+1] = tmp;
      }
    }
    print(arr[i], " ");  // Pass가 끝날 때마다 배열 출력
  }
  println();
  
  for(i=0; i<arr.length; i++) {
    print(arr[i], " ");
  }
}

void draw() {
}
