import 'package:test/test.dart';

import '../bin/algorithms/sorting_algorithms/bubble_sort/bubble_sort.dart';

void main() {
  test('Sorting ', () {
    var array = [23, 64, 12, 48, 76, 90, 7];
    var sorted = BubbleSort.sort(array);
    expect(sorted, [7, 12, 23, 48, 64, 76, 90]);
  });
}
