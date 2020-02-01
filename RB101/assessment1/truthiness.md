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
