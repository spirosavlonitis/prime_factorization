def get_factors(number)
	
	factors=[]
	i=2
	while i < number
		factors << i if number % i == 0
		i+=1
	end
	factors
end
	

p get_factors(gets.chomp.to_i)