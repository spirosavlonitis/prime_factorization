max= gets.chomp.to_i

range = (1..max)
temp_primes = []
primes = range.select do |n|

		if n <= 9
			if n <=5
			   if n > 1 && n % 2 == 1 || n == 2 
			   		temp_primes << n
			   		true
			   end
			else
				val=true
				temp_primes.each do |t|

					if n % t == 0
						val=false
						break
					end
				end
				temp_primes << n if val
				val
			end
		else
			val=true
			temp_primes.each do |t|
				if n % t == 0
					val=false
					break
				end
			end
			temp_primes << n if val
			val
		end
end

p primes
p primes.size