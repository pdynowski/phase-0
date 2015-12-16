/* Create a JavaScript grocery list

The user should be able to:
  Create a new list
  Add an item and quantity to the list
  Remove an item from the list
  Update quantities for items in the list
  Print the list to the console


Create a new List
  ACCEPTS space-separated list of ITEMS (String)
  ADDS each item to the list with a QUANTITY = 1

Add new item to list
  THIS METHOD WILL EXIST ONLY SO AN ADD METHOD EXISTS. FUNCTIONALLY THE SAME
  AS UPDATE, SO IT WILL JUST CALL THAT
  REQUIRE INPUT of the LIST (Object)
  REQUIRE INPUT of an ITEM NAME (String)
  OPTIONAL INPUT of a QUANTITY (integer), DEFAULT = 1
  CALL UPDATE method with item, qty

Update the qty of an item on the list
  REQUIRE INPUT of the LIST (Object)
  REQUIRE INPUT of an ITEM NAME (String)
  OPTIONAL INPUT of QUANTITY (integer), DEFAULT = 1
  CHECK current list for ITEM NAME
  IF item does not exist
    PUSH item, qty into list
  ELSE
    ADD QUANTITY to currently existing quantity of item

Print the list to the console
  LOOP over list
    PRINT each item in list to console

*/

function newList(list) {
  var listArray = list.split(" ");
  return listArray.reduce(function(prev, current) {
    if(current !== '') {
      prev[current] = 1;
    }
    return prev;
  }, {});
}

function addItem(list, item, qty){
  if(qty === undefined || qty < 1) qty = 1;
  updateItem(list, item, qty);
}

function updateItem(list, item, qty) {
  if(qty === undefined) qty = 1;
  if(list.hasOwnProperty(item)) {
    list[item] += qty;
  } else {
    list[item] = qty;
  }
  if(list[item] <= 0) deleteItem(list, item);
}

function deleteItem(list, item) {
  delete list[item];
}

// TEST CODE

// console.log(newList("steak arugula salmon onions lemons"));
// var groceries = newList("steak arugula salmon onions lemons");
// addItem(groceries, "cheese");
// console.log(groceries);
// addItem(groceries, "pickles", -2);
// console.log(groceries);
// updateItem(groceries, "arugula", -2);
// console.log(groceries);
// deleteItem(groceries, "cheese");
// console.log(groceries);

/* REFLECTION

What concepts did you solidify in working on this challenge? (reviewing the
passing of information, objects, constructors, etc.)

General javascript method work, etc - passing variables and the like. I also
learned that the class constructor for JS doesn't seem to work in node for
some reason - although it's supposedly supported soon.

What was the most difficult part of this challenge?

I had originally done some work using an assert function, rather than test
code, but I couldn't really get it to work like I wanted. Other than that, the
JS itself was pretty straightforward.

Did an array or object make more sense to use and why?

Object - it made a lot more sense to use the list items as keys and the
quantities as the values than to create subarrays or something.
