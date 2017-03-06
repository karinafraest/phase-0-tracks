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

reverse("hello");
reverse("i cannot believe it is not butter")