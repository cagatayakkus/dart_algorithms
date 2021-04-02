class ReversedBubbleSort {
  static List<int> sort(List<int> array) {
    for (var i = array.length - 1; i >= 0; i--) {
      for (var j = array.length - 1; j >= (array.length - 1) - (i - 1); j--) {
        if (array[j] < array[j - 1]) {
          var temp = array[j - 1];
          array[j - 1] = array[j];
          array[j] = temp;
        }
      }
    }
    return array;
  }
}
