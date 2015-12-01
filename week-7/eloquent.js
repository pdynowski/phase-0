// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

console.log("Does this work?");

// Program Structure
// Write your own variable and do something to it.

var greeting = "Welcome to JavaScript";
console.log(greeting);

// Food program
// prompt("What is your favorite food?")
// console.log("Hey! That's my favorite, too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for(var i = 1; i <= 100; i++) {
  var output = "";
  if(i % 3 === 0) {
    output += "Fizz"
  }
  if(i % 5 === 0) {
    output += "Buzz"
  }
  if (output !== "") {
    console.log(output)
  } else {
    console.log(i)
  }
};

// Functions

// Complete the `minimum` exercise.

function minimum(a,b) {
  if(a < b) return a;
  return b;
};

console.log(minimum(5,10));
console.log(minimum(10,5));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Paul",
  age: 38,
  favorite_foods: ["steak", "cheese", "pizza"],
  quirk: "collect board games"
};

console.log(me.name)
console.log(me.age)
console.log(me.favorite_foods)
console.log(me.quirk)