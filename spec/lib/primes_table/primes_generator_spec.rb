require 'spec_config'

describe PrimesTable::PrimesGenerator do
	describe '.generate' do
    context 'checks if generated primes are the first 150' do
      (1..150).each do |count|
        it "will return an array of #{count} prime numbers" do
          expect(subject.generate(count)).to eql first_150_primes[0, count]
        end
      end
    end

    context 'checks if generated numbers are primes' do
      it "will check if 200 generated numbers are primes" do
        subject.generate(200).each do |num|
          expect(prime_number?(num)).to be true
        end
      end
    end
  end

  def prime_number?(num)
    return false if num < 2
    (2..(num / 2)).each do |i|
      return false if num % i == 0
    end
    return true
  end

  def first_150_primes
    [  2,   3,   5,   7,  11,  13,  17,  19,  23,  29,  31,  37,  41,  43,  47,
      53,  59,  61,  67,  71,  73,  79,  83,  89,  97, 101, 103, 107, 109, 113,
     127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197,
     199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281,
     283, 293, 307, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379,
     383, 389, 397, 401, 409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463,
     467, 479, 487, 491, 499, 503, 509, 521, 523, 541, 547, 557, 563, 569, 571,
     577, 587, 593, 599, 601, 607, 613, 617, 619, 631, 641, 643, 647, 653, 659,
     661, 673, 677, 683, 691, 701, 709, 719, 727, 733, 739, 743, 751, 757, 761,
     769, 773, 787, 797, 809, 811, 821, 823, 827, 829, 839, 853, 857, 859, 863 ]
  end
end