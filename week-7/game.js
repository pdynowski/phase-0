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
  }
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
  food: 0,
  gold: 0,
  materials: 0,
  cities: []
};

// Provides a method for changing a pop's production bonus.
var chooseProduction = function(pop, prod) {
  switch(prod) {
    case "food":
      pop.production.food = 1;
      pop.production.materials = 0;
      pop.production.gold = 0;
      break;
    case "materials":
      pop.production.food = 0;
      pop.production.materials = 1;
      pop.production.gold = 0;
      break;
    case "gold":
      pop.production.food = 0;
      pop.production.materials = 0;
      pop.production.gold = 1;
      break;
  }
}

// Create a new city and add it to the nation list
var buildCity = function(nation, name) {
  var city = new City(name);
  nation.cities.push(city);
  nation.food -= build_requirements.city.food;
  nation.materials -= build_requirements.city.materials;
  nation.gold -= build_requirements.city.gold;
}

// Gather and store produced resources based on cities and population
var collectResources = function(nation) {
  var food = 0;
  var materials = 0;
  var gold = 0;
  nation.cities.forEach(function(city) {
    food += city.production.food;
    materials += city.production.materials;
    gold += city.production.gold;
    city.population.forEach(function(pop) {
      (food += pop.production.food);
      (materials += pop.production.materials);
      (gold += pop.production.gold);
    })
  })
  nation.gold += gold;
  nation.food += food;
  nation.materials += materials;
}

// initialize function - create first city and population
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
    if(nation.food >= build_requirements.population.food) {
      city.population.push(new Population());
      nation.food -= build_requirements.population.food;
      city.pop++;
    }
  }
}


// initialize(nation);

// testing functions

//test chooseProduction - all work
// pop = new Population();
// console.log(pop);
// chooseProduction(pop, "materials");
// console.log(pop);
// chooseProduction(pop, "gold");
// console.log(pop);
// chooseProduction(pop, "food");
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
// nation.food = 10;
// console.log(nation);
// increasePopulation(nation, nation.cities[0]);
// console.log(nation);


// basic loop. plays through game, adding population and cities when possible,
// until second city is built.

// while(nation.cities.length < 2){
//   collectResources(nation);
//   increasePopulation(nation, nation.cities[0]);
//   if(nation.gold >= build_requirements.city.gold && nation.materials >= build_requirements.city.materials && nation.food >= build_requirements.city.food) {
//     buildCity(nation, "Second City");
//   }
//   console.log(nation);
// }

// Refactored Code






// Reflection
//
//
//
//
//
//
//
//