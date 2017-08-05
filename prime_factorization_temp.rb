def prime_factorial(primes:,factorial:)
		remainder=factorial
		primes_used={}
		i=0
		while i < primes.[](i)
			x=0
			while remainder % primes[i] == 0
				x+=1
				remainder /= primes[i]
			end
			primes_used.[]=(primes[i],x)
			break if remainder == 1
			if primes[i] == primes.last
				val=true
				next_prime=primes[i] + 1
				primes.each do |prime|
					while next_prime % prime == 0
						next_prime +=1
					end
				end
				primes << next_prime
				
			end
			i+=1
		end
		result = ""
		powers = {2=>"\u00b2",3=>"\u00b3",4=>"\u2074",5=>"\u2075",
		6=>"\u2076",7=>"\u2077",8=>"\u2078",9=>"\u2079"}
		primes_used.each do |key,value|
			if value > 0
				if value == 1
					result << "#{key} * "
				elsif value < 9
			  		result << "%s%s * "%["#{key}","#{powers[value]}"]
				else
					result << "#{key}^#{value}* "			  
				end
			end	
		end
		p primes
		result.chomp(" * ")
end


print "Please enter a positive integer: "
factorial=gets.chomp.to_i


range = (2..factorial)

p prime_factorial(primes:[2,3,5,7],factorial:factorial)