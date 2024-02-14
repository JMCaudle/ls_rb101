* Does a method in an included module override a method defined in a parent object?
* Can I find a way to fix the slice! dilemma as shown in `bannerize.rb`

* Obsidian, Tempora Markdown notes
* Run code that asks what the output will be
* instead of variable, say, the local variable on l;ine 21
* initialized and redifined as opposed to defined
* precise but concise language

* What happens when we run this code? How could we fix it? What concept does this demonstrate?

  * When we run this code, an error is thrown because of line ....

  * We could fix this by....

  * This is demonstrating the concept of....
* make sure you answer all parts of questions

* Only name 1 concept


```ruby
count = 10
sum = 0

count.downto(5) { |num| sum += num }
puts sum
puts num
```

* On line 46 the local variable `count` is initialized to reference the integer literal `10`.
* On line 47 the local variable `sum` is initialized to reference the integer literal `0`.
* On line 49 the method Integer#downto is called by integer referenced by the variable`count`
  * The block will iterate `num` from 10 -  5, summing 45 as it goes
* on line 50 the puts method is called with `sum` as an argument, displaying the value "45" to the console
* On line 51, the puts method is called with `num` as an argument, which is unavailable in the outer scope, resulting in an error message


```ruby
# What happens when we run this code? Why?
arr = [1, 2, 3, 4, 5]

arr.each do |number|
  last_number = number
  p number * 2
end

p "The last number we doubled was #{last_number}"


# What will be output when we run this code?

def monday
  p "Dang it."
end

is_monday = true

happiness = is_monday ? monday : "Yay!"

puts "My Happiness level today : #{happiness}"

w = "red"
x = "green"
y = x
z = w
  
w = y
x = z
y = y
z = x
  
p w, x, y, z
  
# What will line 11 output and why?

a = 'Sarah'
b = ' Maxwell'
c = a + b
d = a << b
  
p a, b, c, d
  
# What will line 6 output and why?
  
# p c.object_id
# p d.object_id

a = 'Bob'
b = 'Kate'

5.times do |a|
  a = 'Bill'
  b = 'Sarah'
end

p a # what is output and why? What concept does this demonstrate?


def add_one(array)
  array.each_with_index do |num, i|
    element = array[i]
    # element = 1
    element += 1 # str = str + 'foo'
  end
  
  p array
end
  
numbers = [1, 2, 3]
add_one(numbers)
p numbers == [1, 2, 3] # true or false? Why or why not?


arr.[]=(i, 2) # mutating
hash.[]=(key, new_value)

x = arr[i] # non-mutating
x = 2      # non-mutating


####

def add_one(array)
  array.each_with_index do |_, i|
    array[i] += '!'
  end
  
  p array # what will this output?
end
  
numbers = ['one', 'two', 'three']
add_one(numbers)

p numbers == ['one', 'two', 'three'] # true or false? Why or why not?

#####

def format_name(first_name, last_name)
  [first_name, last_name].each do |name|
    name.capitalize
  end
  
  first_name + ' ' + last_name
end

first_name = 'tiger'
last_name = 'king'

formatted_name = format_name(first_name, last_name)
  
p first_name
p last_name
p formatted_name


####

greeting = 'Hello'

loop do
  greeting = 'Howdy'
  farewell = 'Goodbye'
  p greeting # what will be output by this line?
  p farewell # what will be output by this line?
  break
end

p greeting # what will be output by this line?
p farewell # what will be output by this line?


#####

value1 = (3 < 2)
value2 = (6 % 2 == 0)
value3 = ('Brandi' == 'brandi')
  
if value1
  puts "It must be value1"
elsif value2 && value3
  puts "It must be value2 and value3"
end
  
# What will be output and why?
```
