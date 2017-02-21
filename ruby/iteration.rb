def greetings
	puts "Status: initializing"
	yield("Tom")
	puts "Status: end"
end

greetings {|x| puts "Hello #{x}"}