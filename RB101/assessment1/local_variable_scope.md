# Local Variable Scope

Know:
local variable scope, especially how local variables interact with method invocations with blocks and method definitions

- What is variable scope?
  - A variable's scope determines where it can be used within the program.

- How do you define a local variable's scope?
	- A local variable's scope is defined where it is initialized or created.

- What creates inner and outer scoped variables?
	- A variable scope can also be defined by a block. This creates a new variable scope within a program. Inner scope can access outer scoped variables, but not vice versa.
	- Example code:
```ruby
a = 5

3.times do |n|
	a = 3
end

puts a
=> 3

# Not all do/end pairs imply a block.
```

```ruby
a = 5

3.times do |n|
	a = 3
	b = 5
end

puts a
puts b # b is not accessible here because it's not initialized outside the do/end pair  
```

- What determines a block?
	- Do/end pairs following method invocation _are_ blocks.
    - Example code:
```ruby
arr = [1, 2, 3]

for i in arr do
  a = 5
end

puts a
=> 5
# For is part of the Ruby language and not a method invocation.
```

- What are some examples of blocks?
	- `each`, `times` and many other method invocations with a block.
