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

