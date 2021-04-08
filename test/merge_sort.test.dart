import 'package:test/test.dart';
import '../bin/algorithms/sorting_algorithms/merge_sort/merge_sort.dart';

void main() {
  test('Sorting', () {
    var array = [3, 7, 2, 10, 23, 1, 27];
    MergeSort.mergeSort(array, 0, 6);
    expect(array, equals([1, 2, 3, 7, 10, 23, 27]));
  });
}
