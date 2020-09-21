void main() {
  int num; // uninitialised
  print(num);

  /// -> null

  // dynamic is literally dynamic variable
  dynamic x = 'hal';
  x = 123;
  print(x);

  // var is just a place holder later during initialization is replaced
  // var a = 'hal';
  // a = 123;
  // print(a);
}
