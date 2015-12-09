// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Coleby Kent
// This challenge took me [1] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// Iterate through votes
// Iterate through each object inside of each key.
// Add name (if it doesn't already exist) and a tally to votecount
// if name already exists, just increase the tally
// Iterate through the votecount object
// Sort the object, highest to lowest, and take the first key and assign it to the corresponding value in officers.

// __________________________________________
// Initial Solution

// for(var voter in votes) {
//   var cast_votes = votes[voter];
//   for(var officer in cast_votes) {
//     var voted_for = cast_votes[officer];
//     if(typeof voteCount[officer][voted_for] === 'undefined') {
//       voteCount[officer][voted_for] = 0;
//     }
//     voteCount[officer][voted_for]++;

//   }

// }

// for(var office in voteCount) {
//   var votes = voteCount[office];
//   var winner = "";
//   var winning_ballots = 0;
//   for(var candidate in votes) {
//     var ballots = votes[candidate];
//     if (ballots > winning_ballots) {
//       winning_ballots = ballots;
//       winner = candidate;
//     }
//   }
//   officers[office] = winner;
// }
// __________________________________________
// Refactored Solution

for(var voter in votes) {
  var ballot = votes[voter];
  for(var title in ballot) {
    var candidate = ballot[title];
    if(typeof voteCount[title][candidate] === 'undefined') {
      voteCount[title][candidate] = 0;
    }
    voteCount[title][candidate]++;
  }
}

for(var office in voteCount) {
  var votes = voteCount[office];
  var winner = "";
  var winning_ballots = 0;
  for(var candidate in votes) {
    var ballots = votes[candidate];
    if (ballots > winning_ballots) {
      winning_ballots = ballots;
      winner = candidate;
    }
  }
  officers[office] = winner;
}



// Reflection

/*
What did you learn about iterating over nested objects in JavaScript?

Mostly, we found that it was sometimes tricky to make sure we were retrieving
and working with the correct object. We left a lot of declared variables in,
even after refactoring, because we though that it helped make the code
clearer.

Were you able to find useful methods to help you with this?

Our code was fairly simple to begin with, and a lot of the built-in javascript
methods seem to work with arrays rather than objects, so we didn't use much in
the way of built-in methods. We were trying to get the conditional assignment
operator to work (for the initial ballot counting), but we couldn't figure it
out - plus, it seemed like it was making the code less readable, so we left
the actual check for undefined in the code.

What concepts were solidified in the process of working through this challenge?

Generally working with javascript - it always takes a little while to get back
into the javascript mindset when you've been working with Ruby. Eventually, I
imagine the switch will be easier.


*/
// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)