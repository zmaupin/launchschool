# Variables as Pointers

- Variables act as pointers to a place (address space) in memory. 

What is happening in the following code:
```ruby
a = 'hi there'
b = a # => 'hi there'
a = 'not here'
a # => 'not here'
b # => 'hi there'
```

1. a is pointing to memory space `1234`.
2. b then points to the same space `1234`.
3. a is then reassigned to a different address space

- What does the `=` operator do?
	- The `=` assigns a variable to an expression with an address space in memory.

- Do methods that mutate the caller change the address space of a variable?
	- Methods that mutate the caller maintain the same address space, but change the value in that address space.
