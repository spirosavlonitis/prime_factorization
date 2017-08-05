


def get_factors(n)

	factors=[]
	i=2
	while i < n
		if n % i == 0
			factors << i
		end
		i+=1
	end
	factors << n
	return factors
end

number = gets.chomp.to_i

p get_factors(number)