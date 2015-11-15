def caesar_cypher text, shift=5
	
	shift %= 26
	cyphred = ""
	text.each_char do |char|
		ascii = char.ord
		if ascii.between?(97, 122)
			shifted = (ascii + shift > 122)? (ascii + shift - 26) : (ascii + shift)
			cyphred << shifted.chr
		elsif ascii.between?(65, 90)
			shifted = (ascii + shift > 90)? (ascii + shift - 26) : (ascii + shift)
			cyphred << shifted.chr
		else
			cyphred << ascii.chr
		end
	end
	puts cyphred
end

puts "Hey Julius, enter your message please:"
text = gets.chomp
puts "Now enter the shift:"
shift = gets.chomp
caesar_cypher text, shift.to_i
