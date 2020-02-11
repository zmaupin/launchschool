# Methods

method definition and method invocation

## Method Definition

```ruby
def say(words)
	puts words
end

# irb:
2.6.3 :001 > def say(words)
2.6.3 :002?>   puts words
2.6.3 :003?> end
 => :say
```

## Method Invocation

```ruby
say('blue') # => nil # prints 'blue' to the user terminal, but returns nil
```

## Parameters

- What is a parameter in a method?
  - A list of local variable names that can be used within the method when passed with the method invocation. `def say(words)`, words is a parameter.

## Arguments

- What is an argument in a method?
	- Arguments are what the variables send with the method when you invoke it. `'purple` is an argument in `say('purple')`.

## Default Parameters

- What are default parameters?
	- Default parameters are values set in the code that are used as arguments when none are passed to the method.
```ruby
def say(words = 'hello!')
	puts words
end

p say				   # => 'hello!'
p say('stuff') # => 'stuff'
```

## Optional Parentheses

- Are parentheses optional when invoking methods?
	- Yes, but they can be tricky when chaining them together. It is common to not use parentheses with single methods calls.
```ruby
say 'hi' # => nil # prints 'hi' to the screen
```

- How do method definitions affect variable scope?
  - Method definitions create a new variable scope. Even variables defined outside the method are not accessible inside the method.
```ruby
a = 5

def say(words)
  p a
	p words
end

say('words') # undefined local variable or method 'a'.
```

- What is the difference between method invocation with a block vs method definition?
  - Calling `[1, 2, 3].each { |x| p x }` is passing a block to the each method and the caller is the array `[1, 2, 3]`. Method definition is creating the method itself.
