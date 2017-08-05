require "prime_factorization/version"

module PrimeFactorization
  def factors(number)
  		result=[]
  		i=2
  		while i < number
  			result << i if number % i == 0
  			i+=1
  		end
  		return result
  end

  def prime_factors(number)
  	  	all_factors=factors(number)
  	  	result=[]
  	  	all_factors.each do |factor|
  	  		if result.size == 0
  	  			result << factor
  	  		else
  	  			val=true
  	  			result.each do |r|
  	  				val = false if factor % r == 0
  	  			end
  	  			result << factor if val
  	  		end
  	  	end
  	  	return result
  end

  def prime_factorization(number)
  		primes = prime_factors(number)

  		if primes.size == 0
  			return "#{number} is a prime number"
  		else
  			used_primes={}
  			primes.each do |prime|
  				x=1
  				while number > 1
  					if number % prime == 0
  						used_primes.[]=(prime,x)
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
						result << "#{key} * "
					elsif value < 9
						result << "#{key}#{powers[value]} * "
					else
						result << "#{key}^#{value} * "
					end
				end
			end

			result.chomp!(" * ")

  		end
  		
  		return result

  end

end
