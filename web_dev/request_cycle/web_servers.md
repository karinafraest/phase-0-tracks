# Web Servers
## What are some of the key design philosophies of the Linux operating system?
Linux philosophy is similart to Unix's. It revolves around the idea that the user knows what she is doing (computer literate). It revolves around nine major tenets: 
1. Small is Beautiful
2. Each Program Does One Thing Well
Be as specific as possible to make thinks do one thing well. 
3. Prototype as Soon as Possible
4. Choose Portability Over Efficiency
5. Store Data in Flat Text Files
6. Use Software Leverage
	Take advantage of what it is already there. 
7. Use Shell Scripts to Increase Leverage and Portability. Take compatibility into consideration. 
8. Avoid Captive User Interfaces
9. Make Every Program a Filter. Receive input, "do the thing", result in output.


### Resources
 [The impact of the linux philosophy](https://opensource.com/business/14/12/linux-philosophy)
 [How the 9 major tenets of the linux philosophy affect you](https://opensource.com/business/15/2/how-linux-philosophy-affects-you)

## In your own words, what is a vps (virtual private server) What, according to your research are the advantages of using a VPS?
Virtual private servers are parts of a host server that can store many vps at the same time. Each work like physical servers. They are usually less expensive and sometimes you can purchase them depending on the time your host is actually running. You can store your information there and it can take requests too. 
Some of the advantages are: 
..* It is less expensive than other options
..* It is much more customizable
..* If your site grows it can grow with you (provided that you upgrade)

## Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?
When you work as the root user you can modify almost anything. Without the appropriate knowledge you can remove or modify important files that might make your computer stop working. This is why Linux has privilege separation (privileged user is called root). There are commands to elevate your privileges (like sudo), other commands are gksudo or su. 