require 'spec_config'

describe PrimesTable::TableDrawer do

  describe '.draw' do
    context 'draws the multiplication table for an ordered array of numbers' do
      it 'draws the table with the correct spacing' do
        expect{ subject.draw [5, 11, 100] }.to output(expected_table1).to_stdout
      end
    end

    context '.draw unordered' do
      it 'draws the multiplication table for an unordered array of numbers' do
        expect{ subject.draw [50, 200, 3] }.to output(expected_table2).to_stdout
      end
    end
  end

  def expected_table1
    "    |   5   11   100\n" \
    "----+---------------\n" \
    "  1 |   2   11   100\n" \
    " 11 |  55  121  1100\n" \
    "100 | 500 1100 10000\n"
  end

  def expected_table2
    "    |   50     200  3\n" \
    "----+-----------------\n" \
    " 50 |  2500 10000 150\n" \
    "200 | 10000 40000 600\n" \
    "  3 |   150   600   9\n"
  end
end