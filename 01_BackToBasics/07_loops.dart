// Loops in Dart

void main() {
  // for loop is classical for loop, unlike python and kotlin
  // And also there is comma separation available
  for (int i = 0; i < 10; ++i) {
    print('*' * i);
    // String multiplication is supported
    // And for precise patterns
    // import 'dart.io'
    // stdout.write('*');
  }

  // for in loop for iterating over containers
  var lst = [1, 2, 3, 4, 5, 6, 7];
  for (var item in lst) {
    print("Item is $item");
  }

  // NOTE -> There is also a .foreach() loop same as in Javascript

  // While loop
  var bol = true;
  while (bol) {
    print("executed Baby!");
    bol = !bol;
  }

  // do while loop
  do {
    print("do while");
    bol != bol;
  } while (bol); // Remember this semicolon btw.
}
