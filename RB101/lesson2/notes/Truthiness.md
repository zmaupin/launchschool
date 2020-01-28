# Truthiness

- Boolean usually handles whether a value is true of false. Boolean is a data type.
- You usually don't directly use true or false. You evaluate some expression or method call in a conditional ( if i > 0 ).
- Be weary of chaining conditionals.
  - true || 3 / 0 # succeeds
  - true && 3 / 0 # fails with a divide by zero error
- Truthy is much more than just `true`. As long as an expression in a conditional doesn't evalute to false or nil it is truthy.
