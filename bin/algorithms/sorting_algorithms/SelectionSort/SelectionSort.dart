class SelectionSort {
  static List<int> sort(List<int> array) {
    // Must loop till the last element.
    for (var i = 0; i < array.length - 1; i++) {
      var minimumIndex = i;
      for (var j = i + 1; j < array.length; j++) {
        if (array[j] < array[minimumIndex]) {
          minimumIndex = j;
        }
      }
      var temp = array[minimumIndex];
      array[minimumIndex] = array[i];
      array[i] = temp;
    }
    return array;
  }
}
