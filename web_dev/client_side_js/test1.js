//checks to see if the two files are linked
console.log("Hello");

//change the header font size
var headers = document.getElementsByTagName('h1');
var header = headers[0];
header.style.fontSize = "5em";

//create a paragraph element
var newParagraph = document.createElement('p');
var paraText = document.createTextNode("This is way too large!");
newParagraph.appendChild(paraText);
var container = document.getElementById('container');
container.appendChild(newParagraph);

//add an event listener that changes the font size when clicked
function changeSize(event)
{event.target.style.fontSize = "2em"};
header.addEventListener("click", changeSize);