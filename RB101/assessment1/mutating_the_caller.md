# Mutability

how passing an object into a method definition can or cannot permanently change the object

## Pass by Reference

- What is pass by reference?
	- Passing by reference means that when you pass an object to a method that operations within that method can effect the original object defined outside of the method.
```ruby
def cap(str)
	str.capitalize!
end

name = 'jim'
cap(name)
puts name		# => Jim
```

## Pass by Value

- What is pass by value?
	- When passing an object(variable) to a method it is a copy of the original object. Operations performed on the original object do not have no effect on the object outside of the method.
```ruby
def change_name(name)
	name = 'bob' # reassignment does not change the object outside of the method
end

name = 'jim'
change_name(name)
puts name		# => jim
```

## Gotchas

```ruby
def cap(str)
	str.capitalize # The String#capitalize method returns a new object and does not mutate the caller.
end

name = 'jim'
cap(name)
puts name		# => jim
```

- Is Ruby 'pass by reference' or 'pass by value'?
	- Ruby exhibits behaviors of both.

- What is the most important point to remember with regards to mutability in Ruby?
	- When an operation within the method mutates the calle it will affect the original object.

- What operations mutate the caller
	- In Ruby most methods that end with `!`. However, this is not always the case. `Array#<<` is destructive as well, but does not end with `!`.

- Is reassignment considered a destructive operation?
	- Reassignment is not destructive in normal cases. However, it could be destructive if you call methods that mutate the caller on the right side of the expression.
```ruby
	my_name = your_name.capitalize! # This will change `my_name` and also change `your_name`.
```
