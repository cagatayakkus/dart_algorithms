import 'package:test/test.dart';

import '../bin/algorithms/sorting_algorithms/selection_sort/selection_sort.dart';

void main() {
  test('Sorting', () {
    var array = [15, 25, 7, 32, 64, 88];
    var sorted = SelectionSort.sort(array);
    expect(sorted, [7, 15, 25, 32, 64, 88]);
  });
}
