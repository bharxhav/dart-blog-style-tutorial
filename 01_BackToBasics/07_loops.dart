// Loops in Dart

void main() {
  // for loop is classical for loop, unlike python and kotlin
  // And also there is comma separation available
  for (int i = 0; i < 10; ++i) {
    for (int j = 0; j < 10; ++j) {
      print('*');
    }
  }

  // for in loop for iterating over containers
  var lst = [1, 2, 3, 4, 5, 6, 7];
  for (var item in lst) {
    print("Item is $item");
  }

  // NOTE -> There is also a .foreach() loop same as in Javascript
}
