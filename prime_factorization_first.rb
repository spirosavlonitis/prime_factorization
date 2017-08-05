def get_primes(range)
	temp_primes = []
	primes = range.select do |n|
		if n < 10
			if n <=5 && n % 2 == 1 || n == 2
					temp_primes << n
			elsif n > 5
				val=true
				temp_primes.each do |t|
					if n % t == 0
						val=false
					end
				end
				temp_primes << n if val
			end
		else
			val = true
			temp_primes.each do |t|
				if n % t == 0
					val = false
				end
			end
			temp_primes << n if val
		end
	end
end

def prime_factorial(primes:,factorial:)
	
	if primes.include?(factorial)
		%[#{factorial} is a prime!]
	else
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
		result.chomp(" * ")
	end

end

primes=[]
print "Please enter a positive integer: "
factorial=gets.chomp.to_i


range = (2..factorial)
primes = get_primes(range)

p prime_factorial(primes:primes,factorial:factorial)