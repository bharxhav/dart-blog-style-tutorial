// This to demonstrate switch case which is kinda same but syntax is little different

void main() {
  var nothin;
  switch (nothin) {
    case 2:
      {
        print("nothin -> 2");
      }
      break;
    case 3:
      {
        print("nothin is literally nothin");
      }
      break;
    default:
      print("Wass poppin yall");
  }
}

// NOTE : The case expression MUST be constant unlike in Javascript
// And case expression must also have same type throught

/* THIS IS AN ERROR WHEN UNCOMMENTED
switch (2 == 2) {
    case nothin == 2:
      {
        print("nothin -> 2");
      }
      break;
    case nothin == null:
      {
        print("nothin is literally nothin");
      }
      break;
  }
*/
