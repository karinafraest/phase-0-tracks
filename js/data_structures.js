var colors = ["blue", "green", "red", "brown", "orange"];
var names = ["Misty", "Milly", "Manny", "Mama", "Marge"];
colors.push("pink");
names.push("Molly");
// console.log(colors);
// console.log(names);


var horseinfo = {};


for (var i = 0; i < colors.length; i++){
	horsename = names[i];
	horsecolor = colors[i];
	horseinfo [horsename] = horsecolor;
}
	// console.log(horseinfo);

function Car(make, model, color, year) {
	console.log("Our new car:", this);
	this.make = make;
	this.model = model;
	this.color = color;
	this.year = year;
	this.speed = function() { console.log("Fast!"); };
	console.log("CAR");
}

console.log("Let's buy a car ...");
var newcar = new Car("Ford", "Focus", "Blue", 2017);
console.log(newcar);
console.log("Car can speed");
newcar.speed();
console.log("----");

// Release 3 Questions //
// 1. Use the for...in loop and Object.keys forEach
// 2. yes, becuase you have more information and it can be stored together.
