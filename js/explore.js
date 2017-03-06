//Check the word from back (the length of the word) to front (the letter in index 0)
//Each of the letters should be added to a new variable.
//return the new word.
//print new word.

function reverse(word){
	var new_word=""
	for (var i=word.length-1; i>=0; i--){
		new_word=new_word+word[i];
	}
	return new_word;
}


//Driver code
reverse("hello");
var reversed_word=reverse("i cannot believe it is not butter");

if (true && 1==1){
	console.log (reversed_word);
}else{
	console.log("You got here somehow");
}