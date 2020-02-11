# Collections

working with collections (Array, Hash, String), and popular collection methods (each, map, select, etc).

## String Element Reference

```ruby
str = 'abcdefgh'
```

- How do you reference a single character in a String?
	- Use brackets similar to how you reference an array element.
```ruby
	str[2] == 'c' # true
```

- How do you reference multiple characters in a String?
	- Use brackets or the String#slice method.
```ruby
str[2, 2]				# => 'cd'
str.slice(2, 3) # => 'cde' 
```

- Methods always have a return value. You can chain methods together in Ruby.
```ruby
str[2, 3][0] # => 'c'
```

## Array Element Reference

```ruby
arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
```

- How do you reference a single element in an array?
	- [index] brackets
```ruby
arr[4] # => 'd'
```

- How do you reference multiple elements in an array?
	- [index, count to select]
```ruby
arr[4, 2]			 # => ['d', 'e'] # Note how this returns an array unlike slicing a string.
arr.slice(4,3) # => ['d', 'e', 'f']
```

## Hash Element Reference

```ruby
hsh = { 'fruit' => 'apple', 'vegetable' => 'carrot' }
```

- How do you access a value in a hash?
  - Brackets with the key inside. Beware of whether the key is a symbol or string.
```ruby
hsh['fruit']		# => 'apple'
hsh['fruit'][0] # => 'a'
```

## Element Reference Gotchas

- What is an out of bounds indices?
	- An out of bounds indices is an index that does not exist in the array. If the array has 4 elements, then it has indices 0, 1, 2, and 3. arr[4] is out of bounds. However, this will _not_ cause an error. In fact it will return `nil`. Use `fetch` to be more precise since you cannot be sure if `nil` is actually the element or if the index is out of bounds.
```ruby
arr = [1, 2, 3]
arr[4] # => nil

arr.fetch(4) # => IndexError
```

- What is a negative index?
	- Negative indices can be used to access elements in an array in reverse. Instead of counting forward, you can't backward.
```ruby
arr = [1, 2, 3] # Negative indices: -3, -2, -1
arr[-1]					# => 3
```

- What happens when you try to access a hash key that does not exist?
	-	The expression will return `nil` unless you use `fetch` in which it will throw a `KeyError`.
```ruby
hsh = { :a => 1, 'b' => 'two', :c => nil }
	
hsh[:d]	 			 # => nil
hsh[:a]        # => 1
hsh.fetch('c') # => KeyError
hsh.fetch(:c)  # => nil
```

- What is conversion?
	- Conversion, sometimes called typecasting, is when you change a data structure to another type of data structure such as converting an int to a string.
```ruby
1.to_s   # => '1'
'1'.to_i # => 1

'This is a sentence.'.split(' ') # => ['This', 'is', 'a', 'sentence.']

hsh = { :a => 1, 'b' => 'two', :c => nil }

hsh.to_a												   # => [[:a, 1], ['b', 'two'], [:c, nil]]
[[:a, 1], ['b', 'two'], [:c, nil]] # => { a: => 1, 'b' => 'two', :c => nil } 
```

## Element Assignment

- What is String Element Assignment?
	- This is when you assign a new value to a specific element at an index of a String.
```ruby
str = "joe's favorite color is blue"
str[0] = 'J'
str # => "Joe's favorite color is blue"
```

- What is array element assignment?
	- This is when you assign a value to a specific element at an index of an Array.
```ruby
arr = [1, 2, 3]
arr[0] = 100
arr # => [100, 2, 3]
```

- What is hash element assignment?
	- Hash Element Assignment is when assign a value to a specific key in a hash.
```ruby
hsh = { 'a' => 1, 'b' => 2, 'c' => 3 }
hsh['a'] = 100
hsh # => { 'a' => 100, 'b' => 2, 'c' => 3 }
```
