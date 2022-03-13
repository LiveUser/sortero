# Sortero

Hecho en 🇵🇷 por Radamés J. Valentín Reyes

## Import

~~~dart
import 'package:sortero/sortero.dart';
~~~

## Extensions:

### - Bubble sort:

### extension 

.bubbleSort()

### Parameters

* compare: a function that takes as argument one item of a list and returns a number
* reverseOrder: boolean value that determines the order in which stuff is sorted

## Example

### Bubble sort 

~~~dart
List<num> algo = [4,6,3,7,8,9];
    algo.bubbleSort(
	compare: (a){
		return a;
	},
);
print(algo);
~~~

### Bubble sort reverseOrder parameter

~~~dart
List<num> algo = [4,6,3,7,8,9];
    algo.bubbleSort(
      compare: (a){
        return a;
      },
      reverseOrder: true,
    );
	print(algo);
});
~~~

