function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(): void {
  echo foo(5);
}

//This function will cause a stack overflow error because the recursive function foo does not have a base case. This means that the function will continue to call itself until the stack overflows.