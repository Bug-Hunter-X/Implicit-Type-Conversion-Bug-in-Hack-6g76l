function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  return bar(x) - 1;
}

function main(): void {
  print(baz(5)); // Prints 11
}

This code is perfectly valid Hack and will compile without any errors. However, a subtle bug can occur if the function `foo` is modified to take a string argument and does type coercion:

function foo(x: string): int {
  return (int)x + 1; // Implicit type conversion can lead to unexpected results.
}

Now, the program will still compile, but the result of `baz(5)` will change.
The type conversion from string to int is an uncommon error that could arise from different string inputs, including ones that aren't numerical and cause unexpected behavior. 