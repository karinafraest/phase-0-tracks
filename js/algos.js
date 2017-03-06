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

var list=["long phrase", "even longer phrase", "the longest phrase ever", "just a phrase"];

console.log(longPhrase(list))

var otherList=["Ruby", "Python", "C++","JavaScript", "JQuery","HTML", "Css"];

console.log(longPhrase(otherList))