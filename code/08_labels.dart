/**
 * In dart there are block labels, like in java.
 * Lot of them dont understand it's unique ability
 * to goto a block or use a block without calling
 * a funtion.
 * 
 * And the additional use of break and continue for these labels is immensly
 * more powerful.
 */

void main() {
  outerloop: // This is the label name

  for (var i = 0; i < 5; i++) {
    print("Innerloop: ${i}");
    innerloop:
    for (var j = 0; j < 5; j++) {
      if (j > 3) break;

      // Quit the innermost loop
      if (i == 2) break innerloop;

      // Do the same thing
      if (i == 4) break outerloop;

      // Quit the outer loop
      print("Innerloop: ${j}");
    }
  }
}
