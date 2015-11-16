def substring string, dictionary
	hash = dictionary.product([0]).to_h
	phrase = string.downcase.split(" ")
	phrase.each do |parole|
		hash.each_pair do |lemma, count|
			hash[lemma] += 1 if parole.include?(lemma)
		end
	end
	hash.delete_if { |parole, count| count == 0}
	hash
end


