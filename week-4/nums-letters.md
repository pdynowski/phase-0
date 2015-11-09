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