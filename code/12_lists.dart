// There are two types of Lists in Dart
// Both have same syntax but vary during object creation

void main() {
  // Fixed Length List
  var fixed_lst =
      List(10); // new can be used, but in dartv2, it is not necessary

  for (int i = 0; i < fixed_lst.length; ++i) {
    fixed_lst[i] = i + 1;
  }
  print("Fixed Length List : $fixed_lst");

  // Variable Length List
  var dynamic_len_lst = []; // or [., ., .] or List() -> zero length

  for (int i = 0; i < 10; ++i) {
    dynamic_len_lst.add(i + 1);
  }
  print("Dynamic Length List : $dynamic_len_lst");

  // Lets try to append

  // fixed_lst.add(11);  --> Error
  dynamic_len_lst.add(11); // --> Works Fine

  print("Fixed Length List : $fixed_lst");
  print("Dynamic Length List : $dynamic_len_lst");
}
