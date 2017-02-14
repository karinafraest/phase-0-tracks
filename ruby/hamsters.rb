puts "Please answer the following questions about your hamster."
puts "Hamster's name: "
name=gets.chomp

puts "Volume level [how loud is your hamster?] (1-10) "
vol=gets.chomp.to_i

puts "Fur color: "
color=gets.chomp

puts "Is your hamster a good candidate for adoption (Y/N)"
good=gets.chomp.upcase

if good=="Y"
	good="is"
else
	good="is not"
end

age=nil
puts "Estimated age: (if you don't know, leave blank)"
age=gets.chomp.to_i
if age==0
	age=nil
end

puts "Your #{color} hamster's name is #{name}."
puts "You say his volume level is #{vol} and that he #{good} a good candidate for adoption."
if age!=nil
	puts "You think his age is #{age}"
else
	puts "You don't know his age."
end
