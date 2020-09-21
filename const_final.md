# **ULTIMATE** *const* vs *final* 

After thorough practical understanding, here is the best intel possible on this topic !!

## **const**

const keyword used to make a variable to store a compile time constant value. Compile time constant value is a value which will be constant while compiling :-)

For example `5` is a compile time constant. While `DateTime.now()` which is not compile time constant. Because this method will return the __time when the line is getting executed__ at runtime. So we can't assign the `DateTime.now()` to a `const` variable.
```dart
const a = 5;
// Uncommenting below statement will cause compile time error.
// Because we can't able to assign a runtime value to a const variable
// const b = DateTime.now();
```
Should be **initialized in the same line**
```dart
const a = 5;
// Uncommenting below 2 statement will cause compilation error.
// Because const variable must be initialized at the same line.
// const b;
// b = 6;
```
All statements below are also acceptable
```dart
// Without type or var
const a = 5;
// With a type
const int b = 5;
// With var
const var c = 6;
```
__Class level const variable__ should be initialized as follows:
```dart
class A{
    static const a = 5;
}
```
__Instance level const variable is not possible.__
```dart
class A {
    // Uncommenting below statement will give compilation error.
    // Because const is not possible to be used with instance level 
    // variable.
    // const a = 5;
}
```
The another major use of `const` is used to make the **object immutable**. To make a class object immutable we need to __use the const keyword with constructor__ and make __all the fields as final__ like mentioned below.
```dart
Class A {
    final a, b;
    const A(this.a, this.b);
}

void main () {
    // There is no way to change a field of object once it's 
    // initialized.
    const immutableObja = const A(5, 6);
    // Uncommenting below statement will give compilation error.
    // Because you are trying to reinitialize a const variable
    // with other value
    // immutableObja = const A(7, 9);

    // But the below one is not the same. Because we are mentioning objA 
    // is a variable of a class A. Not const. So we can able to assign
    // another object of class A to objA.
    A objA = const A(8, 9);
    // Below statement is acceptable.
    objA = const A(10, 11);
}
```
we can use __const keyword to a list.__

`const a = const []` - A variable `a` __initialized as `const` which contains a list of `const` objects__(i.e., The list should contain only compile time constant and immutable objects). So we __can't able to assign `a` with another list.__

`var a = const []` - A variable `a` __initialized as `var` which contains a list `const` objects__. So __we can able to assign another list to the variable `a`.__
```dart
Class A {
    final a, b;
    const A(this.a, this.b);
}

class B {
    B(){ // Doing something }
}

void main() {
    const constantListOfInt = const [5, 6, 7,
                 // Uncommenting below statement give compilation error.
                 // Because we are trying to add a runtime value
                 // to a constant list
                 // DateTime.now().millisecondsSinceEpoch
              ];
    const constantListOfConstantObjA = const [
        A(5, 6),
        A(55, 88),
        A(100, 9),
    ];
    // Uncommenting below 2 statements will give compilation error.
    // Because we are trying to reinitialize with a new list.
    // constantListOfInt = [8, 9, 10];
    // constantListOfConstantObjA = const[A(55, 77)];

    // But the following lines are little different. Because we are just
    // trying to assign a list of constant values to a variable. Which 
    // is acceptable
    var variableWithConstantList = const [5, 6, 7];
    variableWithConstantList = const [10, 11, 15];
    var variableOfConstantListOfObjA = const [A(5, 8), A(7, 9), A(10, 4)];
    variableWithConstantList = const [A(9, 10)];
}
```

---

## **final**

final keyword also used to make the variable to __hold a constant value__. Once initialized we can't able to change the value.

```dart
final a = 5;
// Uncommenting below statement will give compilation error.
// Because a is declared as final.
// a = 6;
```

All statements mentioned below are acceptable.

```dart
// Without type or var
final a = 5;
// With a type
final int b = 5;
// With var
final var c = 6;
```

Can able to __assign a runtime value__.

```dart
// DateTime.now() will return the time when the line is getting
// executed. Which is a runtime value.
final a = DateTime.now();
var b = 5;
final c = b;
```

__Class level final variable__ must be initialized in the same line.

```dart
Class A {
    static final a = 5;
    static final b = DateTime.now();
}
```

__Instance level final variable__ must be initialized in the same line or in the constructor initialization. The value will be put into memory when the object is created.
```dart
Class A {
    final a = 5;
}

// Constructor with a parameter.
Class B {
    final b;
    B(this.b);
}

// Constructor with multiple parameter.
Class C {
    final c;
    C(this.c, int d) {
        // Do something with d
    }
}

void main() {
    A objA = new A();
    B objB = new B(5);
    C objC = new C(5, 6);
}
```

Assigning a __list__.

```dart
final a = [5, 6, 7, 5.6, A()];
// Uncommenting Below statement will give compilation error.
// Because we are trying to reinitialize the object with another list.
// a = [9.9, 10, B()];
```