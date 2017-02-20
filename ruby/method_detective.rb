# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

swap="iNvEsTiGaTiOn".swapcase
#=> “InVeStIgAtIoN”

insert="zom".insert(1,"o")
# => “zoom”

enhance_center="enhance".center(16)
#OR
enhance_insert="enhance".insert(0,"    ") << "    "
# => "    enhance    "

stop_upcase="Stop! You’re under arrest!".upcase

concat="the usual"<< " suspects"
#OR
concat2="the usual"+" "+ "suspects"
#=> "the usual suspects"

suspect_insert="suspects".insert(0,"the usual ")
# => "the usual suspects"

letter_chop="The case of the disappearing last letter".chop
#OR
letter_slice="The case of the disappearing last letter".slice(0..38)
#=> "The case of the disappearing last lette"

mystery_slice="The mystery of the missing first letter".slice(1..38)
#OR
mystery_reverse_chop_reverse="The mystery of the missing first letter".reverse.chop.reverse
# => "he mystery of the missing first letter"

elementary_split_join="Elementary,    my   dear        Watson!".split.join(" ")
# => "Elementary, my dear Watson!"

z_ord="z".ord #return the integer ordinal of a one-character string
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

times_in_string="How many times does the letter 'a' appear in this string?".count("a")
# => 4

puts"swapcase #{swap}"
puts"#{insert}"
puts"center:#{enhance_center}"
puts"insert:#{enhance_insert}"
puts"upcase: #{stop_upcase}"
puts"concatenate <<: #{concat}"
puts"concatenate + words: #{concat2}"
puts"insert: #{suspect_insert}"
puts "chop: #{letter_chop}"
puts "slice: #{letter_slice}"
puts"slice: #{mystery_slice}"
puts"reverse chop reverse: #{mystery_reverse_chop_reverse}"
puts"split join: #{elementary_split_join}"
puts"z ord: #{z_ord}"
puts"times in string (Count): #{times_in_string}"