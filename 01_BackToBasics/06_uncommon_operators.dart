/**
 * Dart like all other programming languages has common operators.
 * These are few extra operators which are either unique or not
 * availible on other programming languages.
 */

void main() {
  // Integer division
  print("Integer Division : 5 ~/ 2 = ${5 ~/ 2}");

  // Membership operator
  print("3 is int : ${3 is int}");
  print("3 !is int : ${3 is! int}");

  // Volunteer Assignment
  print("A variable is assigned only if it is null using ??=");
  var donno;
  var know = 9;
  print("The value inside donno is $donno and inside know is $know");
  donno ??= 10;
  know ??= 10;
  print("The value inside donno is $donno and inside know is $know");

  // Ternary Operator
  var x = know > donno ? know : donno;
  print(x);

  // Null Ternary Operator
  var empty;
  empty = empty ?? 10; // Another way of writing ??=
  // But this is used to return a value if an expression on left returns null
}
