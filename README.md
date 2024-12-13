# Hack Implicit Type Conversion Bug

This repository demonstrates a subtle bug in Hack related to implicit type conversion. The initial code involves a series of functions with type annotations. However, when the `foo` function is modified to accept a string and perform an implicit conversion to an integer, unexpected results can occur depending on the string input.  The solution highlights the importance of explicit type checking and safe type casting to prevent such errors.

## Bug
The bug lies in the implicit type coercion in the updated `foo` function.  This conversion can result in unexpected results if non-numeric strings are passed in.  The program compiles without errors, but the output is different than expected. This can be especially difficult to debug because the type system doesn't prevent it. 