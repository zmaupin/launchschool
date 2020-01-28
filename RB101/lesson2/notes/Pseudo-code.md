# Pseudo-code

- Load the problem in your brain first.
- Understand the problem well so you can disect it and come up with an execution path.
- Use pseudo-code to understand the logical problem layer.
- Two layers to solve problems:
  1. Logical problem domain layer
  2. Syntactical programming language layer
- Formal pseudo-code
```
START                   start of the program
SET                     set a variable  
GET                     get input from the user
PRINT                   displays output to the user
READ                    retrieve value from a variable
IF/ELSE IF/ELSE         conditional branches
WHILE                   looping logic
END                     end of the program
SUBPROCESS              a breakout for a larger problem
```
- Convert pseudo-code to program code
- Then start to improve from a lower level, what if x is nil?
- Make small improvements
- You won't always be able to use pseudo-code.
- Take a piecemeal approach to applying pseudo-code, then translating to Ruby cod, then move on the the next problem.

## Pseudo-code examples

- Write a method that returns the sum of two integers
```
START
  PRINT int1 + int2
  END
```

- Write a method that takes an array of strings and returns a string that is all of those strings concatenated together.
```
START
  concat_strings(array of strings)
  SET i to 0; SET str to ''
  WHILE i is less than the number of items in the array plus 1
    add element at index i to str
  return str
END
```

- Write a method that takes an array of integers, and returns a new array with every other element.
```
START
  every_other(array of integers)
  SET i to 0; set ints to []
  WHILE i is less than the length of the array passed in
    SELECT element if its index is even
    ADD to ints array
  return ints
END
```

