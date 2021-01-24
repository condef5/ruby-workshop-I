# Ruby Workshop

The purpose of these exercises is to train you on how to
use classes, operator overloading and linked list in ruby.

# Exercises

1. DPokemon

A DPokemon is a pokemon profile that shows the name and the power level of a particular pokemon.
In some cases, this pokemon meets other pokemons, and it wants to compare levels and know which is the strongest.

Your task here is to implement a DPokemon class and provide the necessary methods to compare the pokemon levels.

* Implement main class
```
lugia = DPokemon.new("lugia", 2000)
pikachu = DPokemon.new("pikachu", 2000)
```

* Implement equal method(>)

```
lugia == pikachu # false
```

* Implement stronger method(>)

```
lugia > pikachu # true
```

* Implement less strong method(>)
```
lugia < pikachu # false
```


2. FixedArray

A FixedArray is an array that always has a fixed number of elements.

Your task here is write a class that implements a fixed-length array, and provides the
necessary methods to support the following code:

* Implement main class
```ruby
fixed_array = FixedArray.new(5)
```

* Setting a element to position
```ruby
fixed_array[3] = 12
puts fixed_array # nil, nil, nil, 12, nil
```

* Retrieve an element
```ruby
fixed_array[3] # 12
```

* Support errors
```ruby
fixed_array[6] # raise an IndexError
```

* Convert to array
```ruby
puts fixed_array.to_a # [nil, nil, nil, 12, nil]
```

* Convert to string
```ruby
puts fixed_array.to_s # '[nil, "c", nil, "a", "d"]'
```


3. SuperFibo

Have you heard of Leonardo Pisano? Not yet? Don't worry, He invented a famous succession

```
0 1 1 2 3 5 8 13
```

Maybe now you have an idea, this is the fibonacci sequence.

Your task here will be to implement a class and `next` method:

Example of code:

```ruby
zero = SuperFibo.new
one = zero.next
puts one.value # 1

another_one = one.next
puts another_one.value # 1

puts another_one.next.value # 2
puts another_one.next.next.value # 3
```

# Running the tests

After you finish an exercise, you need to go that exercise test in the `test` folder
and remove the comment operator, like this:

```diff
- class FixedArrayTest # < Minitest::Test
+ class FixedArrayTest < Minitest::Test
```

Then you can run the tests with this command:
```bash
rake test
```
