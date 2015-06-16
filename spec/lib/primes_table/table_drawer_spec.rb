require 'spec_config'

describe PrimesTable::TableDrawer do

  describe '.draw' do
    context 'draws the multiplication table for an ordered array of numbers' do
      it 'draws the table with the correct spacing' do
        expect{ subject.draw [1, 11, 100],[1, 11, 100] }.to output(expected_table1).to_stdout
      end
    end

    context '.draw unordered' do
      it 'draws the multiplication table for an unordered array of numbers' do
        expect{ subject.draw [50, 200, 3], [50, 200, 3] }.to output(expected_table2).to_stdout
      end
    end

    context '.draw uneven arrays' do
      it 'draws the multiplication table for an unordered array of numbers' do
        expect{ subject.draw [50, 200, 3], [34, 6] }.to output(expected_table3).to_stdout
      end
    end
  end

  def expected_table1
    "    |   1   11   100\n" \
    "----+---------------\n" \
    "  1 |   1   11   100\n" \
    " 11 |  11  121  1100\n" \
    "100 | 100 1100 10000\n"
  end

  def expected_table2
    "    |    50   200   3\n" \
    "----+----------------\n" \
    " 50 |  2500 10000 150\n" \
    "200 | 10000 40000 600\n" \
    "  3 |   150   600   9\n"
  end

  def expected_table3
    "   |   50  200   3\n" \
    "---+--------------\n" \
    "34 | 1700 6800 102\n" \
    " 6 |  300 1200  18\n"
  end
end