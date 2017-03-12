//Input: An array with phrases
//Steps: Asume the first phrase is the longest
//       Compare the lenght of longest phrase with the lenght of next phrase
//       If the length is bigger, update your longest phrase with this one
//       Keep doing it until you are done with the string
//Output: longest phrase

function longPhrase(list){
	var longestPhrase=list[0];
	for(var i=1; i<list.length; i++){
		if(list[i].length>longestPhrase.length){
			longestPhrase=list[i];
		}
	}
	return longestPhrase
}
/*
var list=["long phrase", "even longer phrase", "the longest phrase ever", "just a phrase"];

console.log(longPhrase(list))

var otherList=["Ruby", "Python", "C++","JavaScript", "JQuery","HTML", "Css"];

console.log(longPhrase(otherList))
*/


//RELEASE1
//Input: two objects
//steps: iterate through each value in each object
//If one of the values of object 1 is equal to one of the values of object 2 they share a value
//Output: true or false
function share_key_value(list1,list2){
	var shared=false;
	for (var name in list1){
		for (var other_name in list2){
			if (name===other_name){
			if (list1[name]===list2[other_name]){
				shared=true;
				break;
			}
		}
		}
		}
	return shared;
}

//Input: length
//Steps: Generate a random size word until the length is equal to the size of the array
//      To generate the random size word: Choose a random rize from 1 to 10
//                                        For each of those, generate a random letter and add it to the word
//                                        Add the word to the array
//Output: Array of strings of given length

//GENERATES A NUMBER FROM 0 TO 25
function randomLetter(){
	var min=0;
	var max=25;
	var alphabet="abcdefghijklmnopqrstuvwxyz";
	var index=Math.floor(Math.random()*(max-min+1))+min;
	return alphabet[index];
}

//GENERATES A WORD WITH A RANDOM LENGTH
function generateWord(){
	var new_word="";
	var word_size=Math.floor((Math.random()*10+1))
	for(var i=0; i<word_size; i++){
		var letter=randomLetter();
		new_word=new_word+letter;
	}
	return new_word
}

//GENERATES AN ARRAY WITH A GIVEN NUMBER OF WORDS
function arrayGenerator(size){
	var newArray=[];
	for(var i=0; i<size; i++){
		newArray[i]=generateWord();
	}
	return newArray;
}

for(var i=2; i<12; i++){
	var anArray=(arrayGenerator(i));
	console.log(longPhrase(anArray));
}


//Returns true
var one={name: "Steven", age: 54};
var two={name: "Tamir", age: 54};

console.log(share_key_value(one,two));

//Returns false
var three={name: "Steven", age: 51};
var four={name: "Tamir", age: 53};

console.log(share_key_value(three,four));

//Returns false

var five={name: "Steven", age: 54};
var six={name: "Tamir", house_number: 54};

console.log(share_key_value(five,six));