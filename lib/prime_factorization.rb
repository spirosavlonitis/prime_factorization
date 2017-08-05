require "prime_factorization/version"

module PrimeFactorization
  def all_factors(number)
  		result=[]
  		i=1
  		while i < number
  			result << i if number % i == 0
  			i+=1
  		end
  		return result << number
  end


end
