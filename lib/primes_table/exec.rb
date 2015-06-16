require 'optparse'

module PrimesTable
  class Exec
    def initialize()
      @options = {}

      OptionParser.new do |option|
        option.on('--count Integer') do |value|
          @options[:count] = value.to_i
        end
        option.on('--version') do
          puts "Table Time. Version: #{VERSION}"
          exit
        end
      end.parse!
    end

    def execute
      primes_array = PrimesGenerator.new.generate @options[:count]
      table = TableDrawer.new.draw primes_array, primes_array
    end
  end
end