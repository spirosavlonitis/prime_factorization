def get_factors(number)
	
	factors=[]
	i=2
	while i < number
		factors << i if number % i == 0
		i+=1
	end

	factors << number

end

def prime_factorization(number)
	
	factors = get_factors(number)

	if factors.size == 1
	  return "#{number} is a prime!"
	else
		prime_factors=[]
		factors.each do |f|
			if prime_factors.size == 0
				prime_factors << f
			else
				val=true
				prime_factors.each do |prime|
					if f % prime == 0
						val = false
						break
					end
				end
				prime_factors << f if val
			end			
		end

		used_primes={}
		prime_factors.each do |prime|
			x=1
			while number > 1
				if number % prime == 0
					used_primes[prime] = x
					x+=1
					number /= prime
				else
					break
				end
			end
		end

		result=""
		powers = {2=>"\u00b2",3=>"\u00b3",4=>"\u2074",5=>"\u2075",
		6=>"\u2076",7=>"\u2077",8=>"\u2078",9=>"\u2079"}

		used_primes.each do |key,value|
			if value > 0
				if value == 1
					result << "#{key}\u00b9 * "
				elsif value < 9
					result << "#{key}#{powers[value]} * "
				else
					result << "#{key}^#{value} * "
				end
			end
		end
	end

	return result.chomp(" * ")
end


print "Please enter a positive interger: "
p prime_factorization(gets.chomp.to_i)