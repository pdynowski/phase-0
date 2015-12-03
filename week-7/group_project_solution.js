// Looks like I wasn't supposed to see the user stories, and the next person
// isn't supposed to see the psuedocode, so it's all gone.

var sum = function(numbers) {
  var length = numbers.length;
  var sum = 0;
  for(var index = 0; index < length; index++){
    sum += numbers[index];
  }
  return sum;
}

var mean = function(numbers) {
  var total = sum(numbers);
  return total/numbers.length;
}

var median = function(numbers) {
  var sorted = numbers.sort(function(a,b){
    if (a < b) return -1;
    if (a > b) return 1;
    return 0;
  });

  if(numbers.length % 2 == 0) {
    return mean(numbers.slice(Math.floor(numbers.length/2)-1,Math.floor(numbers.length/2) + 1));
  } else {
    return numbers[Math.floor(numbers.length/2)];
  }
}





