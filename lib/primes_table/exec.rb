require 'optparse'

module PrimesTable
  class Exec
    def initialize()
      @options = {}

      OptionParser.new do |option|
        option.on("--count X", "-c X", "Draws a multiplication table for the X first prime numbers") do |value|
          @options[:count] = value.to_i
        end
        option.on("-h", "--help", "Prints this help") do
          puts option
          exit
        end
        option.on("-s", "--square", "Draws a multiplication table for the X first square numbers") do 
          @options[:square] = true
        end
      end.parse!
    end

    def execute
      primes_array = (@options[:square] ? SquaresGenerator.new.generate(@options[:count]) : PrimesGenerator.new.generate(@options[:count]))
      table = TableDrawer.new.draw primes_array, primes_array
    end
  end
end