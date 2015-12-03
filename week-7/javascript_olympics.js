 // JavaScript Olympics

// I paired with Zollie Barnes on this challenge.

// This challenge took me [1] hours.


// Warm Up




// Bulk Up
//Pseudocode
// function takes array
// function properties include name and event property
// spits out "athlete won event"

// //this is a function declaration:
//   function winners(athletes) {
//     athletes.forEach(function(athlete) {
//       athlete.win = athlete.name + " won the " + athlete.event + "!";
//     })
//   }


// //this is a function expression
var winners = function(athletes) {
  athletes.forEach(function(athlete) {
    athlete.win = athlete.name + " won the " + athlete.event + "!";
  })
}

// //Driver Code
// var athletes = [{name: "Sarah Hughes", event: "Ladies' Singles"}, {name: "Michael Phelps", event: "100m freestyle"}]
// winners(athletes);
// console.log(athletes)
// console.log(athletes[0].win)

// Jumble your words

// function accepts a string argument
// uses js built-in functions to reverse string
// convert string to array
// reverse array
// rejoin array into string
var reverse_string = function(string){
  return string.split("").reverse().join("")
}

// // Driver Code

// console.log(reverse_string("farts"))
// console.log(reverse_string("jump"))

// 2,4,6,8

// pseudocode
// function accepts ARRAY of numbers
// RETURN array with only even numbers

var evens = function(numbers) {
  return numbers.filter(function(number) {
    if (number % 2 === 0) return true;
  })
}


// // Driver Code
// console.log(evens([1,2,3,4,5,6,7,8]))

// "We built this city"

// pseudocode
// create constructor version of new Athlete object
// assign name, age, sport, quote

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

// driver code

// var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
// console.log(michaelPhelps.constructor === Athlete)
// console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

// What JavaScript knowledge did you solidify in this challenge?

// Well, basic syntax, for one. I find myself just stuck enough in Ruby coding
// patterns that little things are constantly missing in JS - return statements,
// for instance - I've been relying on Ruby's automatic return of the last
// evaluated statement, and it's causing problems in JS.

// What are constructor functions?

// Constructor functions are functions in JS that define how an object will be
// created. They're quite similar to classes in Ruby.

// How are constructors different from Ruby classes (in your research)?

// 1. Constructors are only responsible for creating new instances in JS -
// behavior is defined in something called a prototype. In Ruby, both behavior
// and definition occur in the class. Also, there are no formal classes in JS
// - any function can technically be used as a constructor, while an actual
// class definition is needed to construct a class in Ruby.
