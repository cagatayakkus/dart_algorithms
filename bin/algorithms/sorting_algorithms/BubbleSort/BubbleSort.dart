class BubbleSort {
  static List<int> sort(List<int> array) {
    for (var i = 0; i < array.length - 1; i++) {
      for (var j = 0; j < array.length - i - 1; j++) {
        if (array[j] > array[j + 1]) {
          var temp = array[j + 1];
          array[j + 1] = array[j];
          array[j] = temp;
        }
      }
    }
    return array;
  }
}
