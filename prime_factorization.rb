def get_factors(number)
	factors=[]
	i=2
	while i < number
		factors << i if number % i == 0	
		i+=1
	end
	return factors << number
end


def prime_factorization(number)
	
	factors = get_factors(number)
	if factors.length == 1
		return "#{number} is a prime!"
	else
		print "Factors: "
		p factors
		prime_factors = []
		factors.each do |e|  
			if e == 2
				prime_factors << e
				false
			else
				val=true
				prime_factors.each do |c|
					if e % c == 0
						val = false
						break
					end
				end
				prime_factors << e if val
				val
			end
		end

		used_factors={}
		prime_factors.each do |f|
			x=1
			while number % f == 0
				used_factors[f] = x
				x+=1
				number /= f
			end
		end
		result = ""
		powers = {2=>"\u00b2",3=>"\u00b3",4=>"\u2074",5=>"\u2075",
		6=>"\u2076",7=>"\u2077",8=>"\u2078",9=>"\u2079"}
		used_factors.each do |key,value|
			if value == 1
				result << "#{key} * "
			elsif value < 9
				result << "#{key}#{powers.[](value)} * "
			else
				result << "#{key}^#{value} * "
			end
		end
		result.chomp!(" * ")
	end

		return result
end

print "Please enter a positive integer: "
number = gets.chomp.to_i

result=prime_factorization(number)
print "Prime factorization: "
p result