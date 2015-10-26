class MatrixMultiplier

  attr_accessor :matrix_1, :matrix_2
  
  def initialize(matrix_1,matrix_2)
    @matrix_1 = matrix_1
    @matrix_2 = matrix_2
  end

  def solve
    if !is_valid?
      puts 'Those are not valid matrices to be multiplying. Sorry.'
    else
      output_matrix = []
      @matrix_1.each_with_index do |row, row_index|
        output_matrix.push([])
        get_columns_from_matrix(@matrix_2).each do |column|
          output_matrix[row_index].push(compute_dot_product(row,column))
        end
      end
      output_matrix
    end
  end

  def compute_dot_product(row, column)
    sum = 0
    row.each_with_index do |row_number, column_index|
      sum += row_number * column[column_index]
    end
    sum
  end

  def get_columns_from_matrix(matrix)
    new_matrix = []
    matrix.each_with_index do |row, row_index|
      row.each_with_index do |column_entry, column_index|
        if row_index == 0
          new_matrix.push([column_entry])
        else
          new_matrix[column_index].push(column_entry)
        end
      end
    end
    new_matrix
  end

  def is_valid?
    @matrix_1[0].length == @matrix_2.length ? true : false 
  end

  def print_nicely(matrix)
    output = ""
    matrix.each do |row|
      output << '| '
      row.each do |column_of_row|
        output << "#{column_of_row.to_s}, "        
      end
      output << " |\n"
    end
    puts output
  end
end
