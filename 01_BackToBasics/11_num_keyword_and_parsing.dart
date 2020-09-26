/*
Dart numbers can be classified as −
  int − Integer of arbitrary size. The int data type is used to represent whole numbers.
  double − 64-bit (double-precision) floating-point numbers, as specified by the 
            IEEE 754 standard. The double data type is used to represent fractional numbers

The num type is inherited by the int and double types. 
The dart core library allows numerous operations on numeric values.

num is a class, like how list, int etc are in python

*/

void main() {
  print(num.parse('10'));
  print(num.parse('10.50'));

  print(num.tryParse('input')); // Returns null if not possible
  // This can be combined with ?? operator for more clean programs
}
