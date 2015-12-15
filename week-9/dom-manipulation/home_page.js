// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:




// Release 1:
document.getElementById('release-0').className = 'done';



// Release 2:

document.getElementById('release-1').style.display = 'none';


// Release 3:

document.getElementsByTagName('h1')[0].innerHTML = "I completed release 2";


// Release 4:

document.getElementById('release-3').style.backgroundColor = '#955251';


// Release 5:

var changes = document.getElementsByClassName('release-4');
for(var item in changes) {
  if(changes.hasOwnProperty(item)) {
    changes[item].style.fontSize = '2em';
  }
}

// Release 6:

var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content);