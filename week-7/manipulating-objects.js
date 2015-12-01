// Manipulating JavaScript Objects

// I worked on this challenge: [by myself, with: ]

// There is a section below where you will write your code.

// DO NOT ALTER THIS OBJECT BY ADDING ANYTHING WITHIN THE CURLY BRACES!
var terah = {
  name: "Terah",
  age: 32,
  height: 66,
  weight: 130,
  hairColor: "brown",
  eyeColor: "brown"
}
// __________________________________________
// Write your code below.

adam = {
  name: 'Adam',
};

terah = {
  name: 'Terah',
  spouse: adam,
  weight: 125,
};

adam.spouse = terah;
terah.children = {};

carson = {
  name: 'Carson',
};

terah.children.carson = carson;

carter = {
  name: 'Carter'
};

terah.children.carter = carter;


terah.children['colton'] = {name: 'Colton'};

adam.children = terah.children;




// __________________________________________
// Reflection: Use the reflection guidelines
// What tests did you have trouble passing? What did you do to make
// it pass? Why did that work?

// I spent an unfortunate amount of time trying to "push" or "add" 
// carter to the children object in terah. I was trying to apply 
// Ruby methods to JavaScript problems; things worked much better 
// when I just assigned the values directly into the object. That 
// worked because it's the correct JS method to use for assignment.
//
// How difficult was it to add and delete properties outside of the 
// object itself?
//
// Once I started using correct syntax, not hard at all.
//
// What did you learn about manipulating objects in this challenge?
//
// Using correct syntax is helpful. I tried to create the objects 
// using both dot and bracket notation, and both creating the object
//  prior to assignment and at the time of assignment. All of this 
// seemed to work just fine; never had to delete anything, but I'm 
// pretty sure I could.

// __________________________________________
// Driver Code:  Do not alter code below this line.
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (adam instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)

assert(
  (adam.name === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)

assert(
  terah.spouse === adam,
  "terah should have a spouse property with the value of the object adam.",
  "3. "
)

assert(
  terah.weight === 125,
  "The terah weight property should be 125.",
  "4. "
)

assert(
  terah.eyeColor === undefined || null,
  "The terah eyeColor property should be deleted.",
  "5. "
)

assert(
  terah.spouse.spouse === terah,
  "Terah's spouse's spouse property should refer back to the terah object.",
  "6. "
)

assert(
  (terah.children instanceof Object),
  "The value of the terah children property should be defined as an Object.",
  "7. "
)

assert(
  (terah.children.carson instanceof Object),
  "carson should be defined as an object and assigned as a child of Terah",
  "8. "
  )

assert(
  terah.children.carson.name === "Carson",
  "Terah's children should include an object called carson which has a name property equal to 'Carson'.",
  "9. "
)

assert(
  (terah.children.carter instanceof Object),
  "carter should be defined as an object and assigned as a child of Terah",
  "10. "
  )

assert(
  terah.children.carter.name === "Carter",
  "Terah's children should include an object called carter which has a name property equal to 'Carter'.",
  "11. "
)

assert(
  (terah.children.colton instanceof Object),
  "colton should be defined as an object and assigned as a child of Terah",
  "12. "
  )

assert(
  terah.children.colton.name === "Colton",
  "Terah's children should include an object called colton which has a name property equal to 'Colton'.",
  "13. "
)

assert(
  adam.children === terah.children,
  "The value of the adam children property should be equal to the value of the terah children property",
  "14. "
)

console.log("\nHere is your final terah object:")
console.log(terah)