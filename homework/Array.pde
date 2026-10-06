class Array {
  int i0, j0, len, max, w;
  int[] arr;
  int[] id;   // 각 블록의 고유 번호 (정렬 중 값과 함께 움직여서 색을 따라가게 함)

  Array(int len, int i0, int j0) {
    max = 100;
    this.i0 = i0;
    this.j0 = j0;
    this.len = len;
    arr = new int[len];
    id = new int[len];
    w = (int) (width-4)/len;
    shuffle();
    for (int i=0; i<len; i++)
      id[i] = i;
  }

  // id까지 함께 복사하도록 매개변수 추가
  Array(int len, int[] arr, int[] id, int i0, int j0) {
    this.i0 = i0;
    this.j0 = j0;
    this.len = len;
    this.arr = new int[len];
    this.id = new int[len];
    w = (int) (width-4)/len;
    for (int i=0; i<len; i++) {
      this.arr[i] = arr[i];
      this.id[i] = id[i];
    }
  }

  void draw(boolean done) {
    int x, y, h;
    stroke(0);
    for (int i=0; i<len; i++) {
      if (done)
        fill(DONE_COLOR);          // 정렬 완료: 노란색
      else
        fill(palette[id[i]]);      // 정렬 중: 블록 고유 무지개색

      if (!done && j0 == i)
        strokeWeight(3);           // 현재 비교/선택 중인 블록은 굵은 테두리
      else
        strokeWeight(1);

      x = i*w+2;
      h = arr[i];
      y = height-5*h-60;
      rect(x, y, w, 5*h);
    }
    strokeWeight(1);
  }

  void shuffle() {
    for (int i=0; i<len; i++)
      arr[i] = (int)random(max);
  }

  void printArray() {
    print("("+nf(i0,2)+","+nf(j0,2)+")- ");
    for (int i=0; i<len; i++)
      print(nf(arr[i],2)+" ");
    println();
  }
}
