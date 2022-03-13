import 'package:flutter_test/flutter_test.dart';

import 'package:sortero/sortero.dart';

void main() {
  test('Bubble sort test', () {
    List<num> algo = [4,6,3,7,8,9];
    algo.bubbleSort(
      compare: (a){
        return a;
      },
    );
    print(algo);
  });
  test('Bubble sort test - reverse', () {
    List<num> algo = [4,6,3,7,8,9];
    algo.bubbleSort(
      compare: (a){
        return a;
      },
      reverseOrder: true,
    );
    print(algo);
  });
}