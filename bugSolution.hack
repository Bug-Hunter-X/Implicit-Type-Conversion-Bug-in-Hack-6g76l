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

// Alternatively, for robust string handling (if string input is a possibility):

function foo(x: string): int {
  try {
    return (int)x + 1;
  } catch (Exception e) {
    return 0; // Handle error gracefully or throw a more specific exception
  }
}

This updated `foo` function incorporates error handling for cases where a non-numeric string is provided.  Using a try-catch statement enforces more robust type checking and prevents unexpected behavior or crashes.