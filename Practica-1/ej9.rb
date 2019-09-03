def longuitud (arr)
	arr.map do |str| # arr.map { |str| str.length} # arr.map (&:length)
		str.length
	}
end
p longuitud(['uno','dos','tres'])