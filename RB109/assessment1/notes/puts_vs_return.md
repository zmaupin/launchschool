# puts vs return

- Every method in Ruby returns the evaluated result of the last line that is executed.
```ruby
a = [1, 2, 3]

def mutate(array)
	array.pop
end

p "Before mutate method: #{a}"
p mutate(a)
p "After mutate method: #{a}"

# "Before mutate method: [1, 2, 3]"
# 3 # the mutate method returns the result of the expression on the last line executed. The last line executed is `array.pop`, `[1, 2, 3].pop` which evalutes to 3.
# After mutate method: [1, 2]"
```

- How does Ruby handle return in methods?
	- Ruby always returns the evaluated result of the last line unless there is an explicit `return` before the last line.

- What does a call to the method `puts` return?
	- `puts` prints to the terminal and returns `nil`.
