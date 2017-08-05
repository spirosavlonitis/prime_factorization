

primes=[]
(2..gets.chomp.to_i).select do |n|
	if n <=5 && n % 2 == 1 || n == 2
		primes << n				
	elsif n > 5
		val = true
		primes.each do |p|
			if n % p == 0
				val = false
				break
			end
		end
		primes << n if val
	end
end

p primes