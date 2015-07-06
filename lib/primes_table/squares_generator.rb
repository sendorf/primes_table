module PrimesTable
	class SquaresGenerator
		def generate count
			squares = []
			(1..count).each do |number|
				squares << number**2
			end
			return squares
		end
	end
end