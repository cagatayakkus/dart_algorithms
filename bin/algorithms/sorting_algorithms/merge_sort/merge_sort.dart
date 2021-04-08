class MergeSort {
  static void _merge(
      List<int> array, int leftIndex, int middleIndex, int rightIndex) {
    var leftSize = middleIndex - leftIndex + 1;
    var rightSize = rightIndex - middleIndex;

    var leftList = List<int>.filled(leftSize, 0);
    var rightList = List<int>.filled(rightSize, 0);

    for (var i = 0; i < leftSize; i++) {
      leftList[i] = array[leftIndex + i];
    }

    for (var i = 0; i < rightSize; i++) {
      rightList[i] = array[middleIndex + 1 + i];
    }

    var i = 0, j = 0, k = leftIndex;

    while (i < leftSize && j < rightSize) {
      if (leftList[i] <= rightList[j]) {
        array[k] = leftList[i];
        i++;
      } else {
        array[k] = rightList[j];
        j++;
      }
      k++;
    }

    while (i < leftSize) {
      array[k] = leftList[i];
      i++;
      k++;
    }

    while (j < rightSize) {
      array[k] = rightList[j];
      j++;
      k++;
    }
  }

  static void mergeSort(List<int> array, int leftIndex, int rightIndex) {
    if (leftIndex < rightIndex) {
      var middleIndex = (leftIndex + rightIndex) ~/ 2;
      mergeSort(array, leftIndex, middleIndex);
      mergeSort(array, middleIndex + 1, rightIndex);

      _merge(array, leftIndex, middleIndex, rightIndex);
    }
  }
}
