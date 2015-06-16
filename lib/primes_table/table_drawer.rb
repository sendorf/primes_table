module PrimesTable
	class TableDrawer
		def draw horizontal_array, vertical_array
			max_columns_size = calculate_max_columns horizontal_array, vertical_array.max
			table = generate_header_string horizontal_array, max_columns_size
			table += generate_body_string horizontal_array, vertical_array, max_columns_size
			puts table
		end

		# Generates the header and the separator
		def generate_header_string horizontal_array, max_columns_size
			header = generate_line_string horizontal_array, max_columns_size
			header += generate_separator horizontal_array, max_columns_size
			return header
		end

		# Generates the body of the table
		def generate_body_string horizontal_array, vertical_array, max_columns_size
			body = ""
			vertical_array.each do |value|
				body += generate_line_string horizontal_array, max_columns_size, value
			end
			return body
		end

		# Generates the line that separates the header from the rest of the table
		def generate_separator horizontal_array, max_columns_size
			separator = add_horizontal_lines (max_columns_size[0] - 1)
			separator += '-+'
			index = 1
			horizontal_array.each do |number|
				separator += add_horizontal_lines max_columns_size[index]
				index += 1
			end
			separator += "\n"
		end

		# Generates a line of the table as string
		def generate_line_string horizontal_array, max_columns_size, line_value = ""
			line = add_spacing (max_columns_size[0] - 1), line_value.to_s
			line += ' |'
			index = 1
			horizontal_array.each do |number|
				line += add_spacing max_columns_size[index], (" " + (number*(line_value.to_s.length == 0 ? 1 : line_value.to_i )).to_s)
				index += 1
			end
			line += "\n"
			return line
		end

		# Adds as many spaces as needed to keep the table format
		def add_spacing expected_size, number = ""
			number = number
			while number.length <= expected_size
				number = " " + number
			end
			return number
		end 

		# Adds as many - as needed to keep the table format for each column
		def add_horizontal_lines expected_size
			column = ""
			while column.length <= expected_size
				column = '-' + column
			end
			return column
		end

		# Generates an array with the maximum size for each colum of the table
		def calculate_max_columns horizontal_array, max_vertical
			max_columns_size = [max_vertical.to_s.length]
			horizontal_array.each do |number|
				max_columns_size << (number * max_vertical).to_s.length
			end
			return max_columns_size
		end
	end
end