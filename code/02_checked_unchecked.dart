/**
 * In Dart, there is something called 'type mismatch' 
 * where any data type variable can store any type of
 * value, to reduce errors in app or website execution.abstract
 * Thus it is not so strict, BUT it has an execution mode called
 * checked mode, where there is no mercy for Exceptions
 * 
 * 
 * Execute the following program as:
 *    $ dart 02_checked_unchecked.dart
 *    $ dart -c 02_checked_unchecked.dart
 *    $ dart - - checked 02_checked_unchecked.dart
 * 
 *    Dart VM will throw:
            Unhandled exception: 
            type 'String' is not a subtype of type 'int' of 'n' where 
            String is from dart:core 
            int is from dart:core 
            #0  main (file:///C:/Users/Administrator/Desktop/test.dart:3:9) 
            #1  _startIsolate.<anonymous closure> (dart:isolate-patch/isolate_patch.dart :261) 
            #2  _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:148)
 * 
 */

void main() {
  // Commenting so that I can commit it
//   int n = "Hello World!";
//   print(n);
}
