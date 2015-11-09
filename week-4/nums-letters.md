[4.2.1 Defining Variables](https://github.com/pdynowski/phase-0/blob/master/week-4/defining-variables.rb)

[4.2.2 Simple String](https://github.com/pdynowski/phase-0/blob/master/week-4/simple-string.rb)

[4.2.3 Basic Math](https://github.com/pdynowski/phase-0/blob/master/week-4/basic-math.rb)


> What does ```puts``` do?

```puts``` is one of the ruby methods used to display the results of evaluating code (along with ```prints``` and ```p```). ```Puts``` prints the results to the console along with a newline character - so, the output from each run of it will be printed on a new line. In contrast, ```prints``` doesn't add a newline character, so all output will be printed on a single line. Both of these methods return 'nil'; the third method, ```p```, returns the evaluated code, as well as printing the output to the screen along the line of ```puts```.

> What is an integer? What is a float?

Numbers without decimal points are integers. Numbers including decimal points are floats - short for floating-point numbers. 

> What is the different between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Float division calculates an "exact" answer, while integer division does just that - returns an integer, even if you'd be otherwise expecting a floating-point result. I think the easiest way to explain the integer division would be with an example along the lines of the one in Chris Pine's book - how many movies that cost $2 can I see if I have $9? While the 9/2 is actually 4.5, I would only be able to see 4 movies with that $9.

Code for calculating hours in a year, minutes in a decade: 
```ruby
# calculate hours in a year
# = hours in a day * days in a year
hours = 24 * 365
puts "There are #{hours} hours in a year." 

#caculate minutes in a decade
# = minutes in an hour * hours in a day * days in a year * years in a decade,
# ignoring leap years
minutes = 60 * 24 * 365 * 10
puts "There are #{minutes} minutes in a decade."
```

> How does Ruby handle addition, subtraction, multiplication, and division of numbers?

I'm...not really sure what this question wants. It handles them by doing them, using standard mathematical symbols (+, -, *, /, respectively). One tricky bit comes up with division - there's an important difference between integer and float division, discussed below.

> What is the difference between integers and floats?

Integers are numbers without decimals (eg, 4, 5, etc). Floats (short for floating-point decimals) are numbers that include decimals (eg, 4.0 , 3.14159, etc).

> What is the difference between integer and float division?

Float division works as you'd expect division to work - it returns the calculated value of the division, including decimal (eg, 9.0/2.0 = 4.5). Integer division is a little trickier - it returns only the whole number of times the divisor goes into the dividend, ignoring any extra decimal component (eg, 9/2 = 4).


> What are strings? Why and when would you use them?

Strings are groups of letters (more correctly, characters) within a program. Generally, they're indicated by quotation marks. You'd use them to keep track of non-numerical information (Names, cities, addresses, etc).

> What are local variables? Why and when would you use them?

A local variable is basically a holder that is assigned a value, which can be changed at any time by reassigning (eg, num1 = 4). You'd use them any time you need to access the same value multiple times, or if you'd like access to intermediate steps in a calculation.

> How was this challenge? Did you get a good review of some of the basics?

Definitely a good review of some of the basics, plus a good overview of some little differences between Ruby and other languages I've used.