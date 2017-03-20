# 9.1 How the Web Works
## Release 0
**What are some common HTTP status codes?**
102 Processing
202 Accepted
204 No Content
302 Found
305 Use Proxy
307 Temporary Redirect
400 Bad Request
404 Not found
500 Internal Server Error
502 Bad Gateway
504 Gateway Timeout

[See more](https://httpstatuses.com/)

**What is the difference between a GET request and a POST request? When might each be used?**
GET Requests data from a specified resource
POST Submits data to be processed to a speficif resource

GETS requests can be cached and POSTS are never chached
GETS requests remain in the browser history and POSTS do not remain there.
GETS requests can be bookmarked and POSTS can't.
GETS requests have length restriction and POSTS don't have any.
GETS requests allow ASCII only while POSTS have no restriction.
GETS is less secured because data sent is part of the URL. POSTS parameters are not stored in web server logs.

[Source](https://www.w3schools.com/tags/ref_httpmethods.asp)

**Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?**
A cookie is a small text file that is stored by a browser on the user's machine. They have no executable code. Once you enter the web page it sends the file and it is retrieved every time you ask for information (send an http request). It helps the server identify individual users. 
You can create modify and remove cookies through JavaScript unless they are HTTP-Only cookies. In that case, document.cookie will not work. It is a security measure.


[Source](https://www.nczonline.net/blog/2009/05/05/http-cookies-explained/)