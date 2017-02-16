def encrypt(x)
  i = 0
  while i < x.length
    letter = x[i]
    if letter == "z"
      x[i] = "a"
    else
      x[i] = letter.next
    end
    i += 1
  end
  puts "#{x}"
  return x
end

def decrypt(x)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  i = 0 
  while i < x.length
    letter = x[i]
    x[i] = alphabet[(alphabet.index(letter)-1)]
    i += 1
  end
  puts "#{x}"
  return x
end

encrypt("abc")
encrypt("zed")
decrypt("bcd") 
decrypt("afe") 

decrypt(encrypt("swordfish"))

puts "would you like to decrypt or encrypt a password?"
agent = gets.chomp
puts "Please enter a password"
password = gets.chomp

  if agent == "encrypt"
    new = encrypt(password)
  elsif agent == "decrypt"
    new =  decrypt (password)
  end

puts "The #{agent} password is #{new}!"