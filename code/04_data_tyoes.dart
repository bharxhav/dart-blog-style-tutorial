void main() {
  // Numbers - Primitive
  int numa = 10;
  double deci = 10.0;

  String name = 'Bhargav';

  bool is_bool = true;

  // List and Map too
  List nums = [1, 2, 3, 4];

  Map dict = {1: 'one', 2: 'two', 3: 'three'};

  print("$numa $deci $name $is_bool $nums $dict");
}

/*
Printing Types : 

# Method 1
print('The values are: ${[x, y, z]}')

# Method 2
print('The values are: $x, $y, $z')

# Method 3
['The values are:', x, y, z].forEach(print);

*/
