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

  /**
   * The null ternary operator is very peculior of it's kind :
   * expr1 ?? expr2
   * If expr1 is non-null, returns its value;
   * otherwise, evaluates and returns the value of expr2
   * 
   * Basically
   * e = expr1 ?? expr2
   * is same as
   * 
   * ** In Kotlin
   *    e = expr1 if expr1 != null else expr2;
   * 
   * ** In Dart 
   *    e = expr1 == null? expr2 : expr1;
   */

  // Let us say I have an API awaited or a function awaited. I can write

  i_return_null() {
    return null;
  }

  var awaited = i_return_null() ?? 0; // Best way to show an application
  print(awaited);
}
