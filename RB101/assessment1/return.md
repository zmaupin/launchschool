# Return Values

implicit return value of method invocations and blocks

```ruby
[1, 2, 3].any? { |num| num > 2 }
```

- One thing to note about the code above is that there are two return values to be aware of.
	1. the return value of the method `any?`.
	2. the return value of the block `{ |num| num > 2 }`.

