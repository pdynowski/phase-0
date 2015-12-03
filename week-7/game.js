 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: develop and grow a nation
// Goals: found a second city (end of this game)
// Characters: population
// Objects: nation, cities, resources
// Functions: add resources, build, gather resources

// Pseudocode

// city object - name, food, production, gold, population array, (eventually,
// buildings), cost to build

// population object - create, production bonuses, current activity
// INITIALIZE nation
// INITIALIZE city array
// INITIALIZE first city
//   PRODUCTION: 1 FOOD, 1 PRODUCTION, 1 GOLD
//   POPULATION: 1 population object
// ADD first city to array
// LOOP UNTIL second city added to array
//   LOOP over cities
//     CHECK IF player wants to change population activities
//       IF TRUE    
//         LOOP over population
//           DISPLAY current activity
//           PRINT menu to change activity
//           SELECT new activity
//     ADD city production to stored goods
//   CHECK to see if player wishes to build something
//     IF YES
//       CHECK that player has sufficient resources


// Initial Code

// Object definition for population. Each pop provides a bonus to a single
// production value.
function Population() {
  this.production = {
    food: 1,
    materials: 0,
    gold: 0
  };
  this.occupation = "Farmer"
}

//Object definition for city
function City(name) {
  this.name = name;
  this.maxPop = 5;
  this.pop = 1;
  this.production = {
    food: 2,
    materials: 2,
    gold: 2
  }
  this.population = [new Population()];
}

// Definition of requirements to obtain new object
var build_requirements = {
  city: {
    food: 100,
    materials: 100,
    gold: 100
  },
  population: {
    food: 10
  }
}

//Base nation object - stored goods, list of cities
var nation = {
  goods: {
    food: 0,
    gold: 0,
    materials: 0
  },
  cities: []
};

// Provides a method for changing a pop's production bonus.
// var chooseProduction = function(pop, prod) {
//   switch(prod) {
//     case "food":
//       pop.production.food = 1;
//       pop.production.materials = 0;
//       pop.production.gold = 0;
//       pop.occupation = "Farmer";
//       break;
//     case "materials":
//       pop.production.food = 0;
//       pop.production.materials = 1;
//       pop.production.gold = 0;
//       pop.occupation = "Miner";
//       break;
//     case "gold":
//       pop.production.food = 0;
//       pop.production.materials = 0;
//       pop.production.gold = 1;
//       pop.occupation = "Gold Miner";
//       break;
//   }
// }

//REFACTORED CHOOSEPRODUCTION FUNCTION
// plus, get some practice adding functions to a prototype
Population.prototype.chooseProduction = function(prod) {
  console.log(prod);
  for(var prop in this.production) {
    console.log(prop);
    if(prop === prod) this.production[prop] = 1;
    else this.production[prop] = 0;
  }
  setOccupation(this, prod);
}

//added new function in refactoring to separate functionality from
//chooseProduction

var setOccupation = function(pop, prod) {
  switch(prod) {
    case "food":
      pop.occupation = "Farmer";
      break;
    case "materials":
      pop.occupation = "Miner";
      break;
    case "gold":
      pop.occupation = "Gold Miner";
      break;
  }
}
// Create a new city and add it to the nation list
// var buildCity = function(nation, name) {
//   var city = new City(name);
//   nation.cities.push(city);
//   nation.goods.food -= build_requirements.city.food;
//   nation.goods.materials -= build_requirements.city.materials;
//   nation.goods.gold -= build_requirements.city.gold;
// }

// REFACTOR BUILDCITY
var buildCity = function(nation, name) {
  var city = new City(name);
  nation.cities.push(city);
  for(var prop in build_requirements.city){
    nation.goods[prop] -= build_requirements.city[prop];
  }
}

// Gather and store produced resources based on cities and population
// var collectResources = function(nation) {
//   var food = 0;
//   var materials = 0;
//   var gold = 0;
//   nation.cities.forEach(function(city) {
//     food += city.production.food;
//     materials += city.production.materials;
//     gold += city.production.gold;
//     city.population.forEach(function(pop) {
//       (food += pop.production.food);
//       (materials += pop.production.materials);
//       (gold += pop.production.gold);
//     })
//   })
//   nation.gold += gold;
//   nation.food += food;
//   nation.materials += materials;
// }

//REFACTORED COLLECTRESOURCES FUNCTION
var collectResources = function(nation) {
  nation.cities.forEach(function(city) {
    for(var prop in nation.goods){
      nation.goods[prop] += city.production[prop];
    }
    city.population.forEach(function(pop) {
      for(var prop in nation.goods){
        nation.goods[prop] += pop.production[prop];
      }
    })
  })
}

// initialize function - create first city and population
// chose not to refactor goods settings into loop to leave possibility of
// setting them individually open
var initialize = function(nation) {
  var first_city = new City("Capital");
  first_city.maxPop = 10;
  first_city.production.food = 5;
  first_city.production.materials = 5;
  first_city.production.gold = 5;
  nation.cities.push(first_city);
}

// checks to see if there's enough food/space in city to increase the
// population
var increasePopulation = function(nation, city) {
  if(city.population.length < city.maxPop) {
    if(nation.goods.food >= build_requirements.population.food) {
      city.population.push(new Population());
      nation.goods.food -= build_requirements.population.food;
      city.pop++;
    }
  }
}

// testing functions

// //test chooseProduction - all work
// pop = new Population();
// console.log(pop);
// pop.chooseProduction("materials");
// console.log(pop);
// pop.chooseProduction("gold");
// console.log(pop);
// pop.chooseProduction("food");
// console.log(pop);

//test buildCity - works as expected - tests for number of goods  should
//generally occur outside this method

// buildCity(nation, "Townville")
// console.log(nation);

// test collectResources - works

// initialize(nation);
// collectResources(nation);
// console.log(nation);

// // test increasePopulation - works
// initialize(nation);
// nation.food = 10;
// console.log(nation);
// increasePopulation(nation, nation.cities[0]);
// console.log(nation.cities[0].population);


// basic loop. plays through game, adding population and cities when possible,
// until second city is built. uses everything but chooseProduction, which
// really requires some user input.

initialize(nation);

while(nation.cities.length < 2){
  collectResources(nation);
  increasePopulation(nation, nation.cities[0]);
  if(nation.goods.gold >= build_requirements.city.gold && nation.goods.materials >= build_requirements.city.materials && nation.goods.food >= build_requirements.city.food) {
    buildCity(nation, "Second City");
  }
  console.log(nation);
}

// Refactored Code
// REFACTORED CODE IS WITHIN THE CODE ABOVE
// FUNCTIONS THAT GOT REFACTORED:
//  chooseProduction
//  buildCity
//  collectResources

// Reflection
//
// What was the most difficult part of this challenge?

// Honestly, the most difficult part of the challenge for me was deciding what
// to program. Code is...straightforward. Creativity is not.

// What did you learn about creating objects and functions that interact with
// one another?

// Mostly, that you've got to be very careful/specific to make sure that the
// actions you think you're taking line up with the actions you should be
// taking, and that you're taking them on the right things.

// Did you learn about any new built-in methods you could use in your
// refactored solution? If so, what were they and how do they work?

// There didn't seem to be a lot of good built-in methods - the for (var prop
// in object) iterator was pretty useful, though.

// How can you access and manipulate properties of objects?

// There are two main methods - dot and bracket. You can get or set properties
// using object.property OR object[property]. They're generally equivalent,
// but the bracket method is useful for iterating over collections of
// properties.
