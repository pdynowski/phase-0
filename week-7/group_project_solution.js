// User Stories: Calvin Lang
// As a user would like 3 functions called "sum" , "mean" and "median". I have 2 sets of numbers, one called 
// "oddLengthArray" and one called "evenLengthArray". I would like each of the named functions to give me their 
// respective values for each array.

// Pseudocode:  David Ma
// 1.  Define functions such that they work for both sized arrays
//    a. The only one that will be weird is median, where we may need some flow control
//    b. Otherwise, we should be able to create sum / mean in a way that doesn't depend on length of array
// 2.  "SUM" function on an array
//    a. Define a function sum that takes an array as an argument 
//    b. Store the length of the array as a local variable
//    c. Create a loop that iterates through the array (using the saved array as end of loop)
//    d. In the loop, define a local variable as the running total (maybe call it sum)
//    e. With each iteration, increment the index (loop iteration) and add to the running total
// 3. "MEAN" function on an array
//    a.  Define a mean function that accepts an array
//    b.  We can use our SUM function here actually, so save ourselves some code by referencing it
//    c.  Call the SUM function on the array and save it as a local variable
//    d.  Divide the output of the SUM function by the length of the array
// 4. "MEDIAN" function on an array
//    a.  We first need to be able to sort the array (I just looked and thankfully this method exists...)
//    b.  Introduce flow control on the length of the array, probably using the modulo and 2 (length % 2)
//      i. In the event it's odd, modulo will == 1, so we will take return the array's index at (length / 2) (we want integer division)
//      ii.  In the event that it's even, the modulo == 0, so we will need index (length / 2) and 1 less than that, and we need the mean of that
