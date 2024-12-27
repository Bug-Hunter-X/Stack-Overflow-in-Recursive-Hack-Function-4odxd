function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else if (x < 0) {
    return -1; // Handle negative input
  } else {
    return x * foo(x - 1);
  }
}

function bar(): void {
  echo foo(5);
}

//This function fixes the stack overflow error by adding a base case to the recursive function. The base case is when the value of x is equal to 0.  The improved function also handles negative inputs to prevent unexpected behavior.