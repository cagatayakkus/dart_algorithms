import 'package:test/test.dart';
import '../bin/algorithms/sorting_algorithms/ReversedBubbleSort/ReversedBubbleSort.dart';

void main() {
  test('Sorting', () {
    var arr = [12, 6, 23, 72, 3, 19, 24, 9];
    var sorted = ReversedBubbleSort.sort(arr);
    expect(sorted, [3, 6, 9, 12, 19, 23, 24, 72]);
    arr = [1, 3, 5, 2, 4, 7, 9, 8, 12, 8, 24, 72];
    sorted = ReversedBubbleSort.sort(arr);
    expect(sorted, [1, 2, 3, 4, 5, 7, 8, 8, 9, 12, 24, 72]);
  });
}
