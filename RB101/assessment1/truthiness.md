# Truthiness

false vs nil and the idea of "truthiness"

- What is truthiness?
	- Truthiness is when an expression is not explicitly displaying a boolean but it evaluates to `true`. Everything in Ruby is truthy except for `false` and `nil`.

- What things are not truthy?
	- `false` and `nil` are the only things that are not truthy.

- If everything else is truthy, then `num == true` should be `true` right?
	- Not quite. Truthy does not mean `true`. `num` is not `true`...it's `5`. Because `num` is truthy you can skip using `true` directly.

```ruby
num = 5

if num
	puts 'num is : ' + num
else
	puts 'error!'
end
```

- Beware of using `=` vs `==` when using conditionals.
```ruby
# Dangerous code.
if name = find_name
  puts 'got a name'
else
  puts 'could not find it'
end

# This is dangerous because the find_name method could return anything. It could return `nil` or it could be truthy.
```

```ruby
# Good code
name = find_name

if name && name.valid?
	puts 'great name!'
else
	puts 'either could not find the name or it is invalid!'
end
```

