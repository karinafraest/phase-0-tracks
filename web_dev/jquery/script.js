/*function that creates a random color*/
function randomNumber(){
	var number=Math.floor((Math.random()*255)+1)
	return String(number)
}

/*function that creates a line and adds it to the page*/
function addColor(){
	var newColor="rgb("+randomNumber()+","+randomNumber()+","+randomNumber()+")"
	var $newColorBlock=$('<div class="change"></div>');
	
	$('main').append($newColorBlock);
	$('div.change').each(function(){
		$(this).css('background-color',newColor);
		$(this).removeClass("change").addClass("still");
	});
		
	
}