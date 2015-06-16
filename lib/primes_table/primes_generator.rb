module PrimesTable
	class PrimesGenerator
		def generate count
			index = 2 # Current number to check
			primes = [] # Acumulated primes so far
			while primes.count < count
				(primes << index) if prime_number? index
				index += 1
			end
			return primes
		end

		protected

		def prime_number? number
			return false if number < 2
	    (2..(number / 2)).each do |i|
	      return false if number % i == 0
	    end
	    return true
		end
	end
end