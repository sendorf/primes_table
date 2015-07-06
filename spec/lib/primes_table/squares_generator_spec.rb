require 'spec_config'

describe PrimesTable::SquaresGenerator do
	describe '.generate' do
    context 'checks if generated square are the first 5' do
      (1..5).each do |count|
        it "will return an array of #{count} square numbers" do
          expect(subject.generate(count)).to eql first_5_squares[0, count]
        end
      end
    end
  end

  def first_5_squares
    [1, 4, 9, 16, 25]
  end
end