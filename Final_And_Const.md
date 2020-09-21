# Final And Const

To understand const vs final, understand that **const is for data**, and **final is for variable**.

## **final**

The final keyword has the ability to restrict a variable to not change the data it is pointing to change anymore. This **ONLY** means that the variable cant change from one value to Another.
In complex data structures like lists, maps and etc, the values inside those DS **can** change, where as it **cannot** change what it is pointing to, i.e it cannot replace that list with another.

```
final name = 'Bob'; // Without a type annotation
final String nickname = 'Bobby';

name = 'Alice'; // Error: a final variable can only be set once.
```

Simply we can say that with final, variable **cannot** *be re-assigned*.
And final also **must** have an initializer.


## **const**

A const variable is a compile time constant, that is once fixed, cannot be changed in **ANY** way.
By compile time constant we mean that, it's entire state is know during compiling, and it is frozen. So it is completely immutable.

It has two use cases. One was is to place before an object.
```
var my_list = const [1, 2, 3, 4];
var my_onj = const Point(2, 3);
```

They have interesting properties : 

* They must be created from data that can be calculated at compile time. A const object does not have access to anything you would need to calculate at runtime. 1 + 2 is a valid const expression, but new DateTime.now() is not.

* They are deeply, transitively immutable. If you have a final field containing a collection, that collection can still be mutable. If you have a const collection, everything in it must also be const, recursively.
```
// Also const cannot be reassigned
const lis = [1, 2, 3, 4]; // Mutable but only over the top
const lis = const [1, 2, 3, 4, 5] // Completely Immutable
```

* They are canonicalized. This is sort of like string interning: for any given const value, a single const object will be created and re-used no matter how many times the const expression(s) are evaluated.

With all of that being said, both const and final cannot be reassigned, but fields in a final object, as long as they aren't const or final, can be reassigned (unlike const).


### **Best Example**

Here are the best examples : 

### **const**

Value must be known at compile-time,
```
const birthday  = "2008/12/26"
```
Can't be changed after initialized.

### **final**

Value must be known at run-time, 
```
final birthday = getBirthDateFromDB()
```
Can't be changed after initialized.
