require 'pry'
class EditDistance

  
  def initialize(string_1, string_2)
    @string_1 = string_1
    @string_2 = string_2

  end

  def solve
    t1 = Time.now
    x = solve_with_table
    t2 = Time.now
    delta = t2-t1
    puts "Solved using tabulation for an edit distance of #{x} recursively in #{delta} seconds"
    x = solve_recursively(@string_1, @string_2)
    t3 = Time.now
    delta1 = t3-t2
    puts "Solved using recursion for an edit distance of #{x} recursively in #{delta1} seconds"
    puts "Tabulation is #{delta1/delta*100} percent faster."
  end

  private

  def solve_recursively(string_1, string_2)

    case
    when string_1.length == 0
      string_2.length
    when string_2.length == 0
      string_1.length
    else
      replace = ( string_1[0] == string_2[0] ? 0 : 1 ) + solve_recursively(string_1[1..-1], string_2[1..-1])
      insert = 1 + solve_recursively(string_1, string_2[1..-1])
      delete = 1 + solve_recursively(string_1[1..-1], string_2)

      [replace,insert,delete].min
      
    end

  end

  def solve_with_table
    return @string_2.length if @string_1.length == 0
    return @string_1.length if @string_2.length == 0

    build_matrix.last.last
  end

  def build_matrix

    matrix = []
    (@string_1.length + 1).times do
      matrix.push([])
      (@string_2.length + 1).times do
        matrix.last.push(0)
      end
    end
    
    print_matrix(matrix)

    matrix.each_with_index do  |row, i|
      row.each_with_index do |value, j|
        
        case
        when i == 0
          matrix[i][j] = j
        when j == 0
          matrix[i][j] = i
        when @string_1[i-1] ==  @string_2[j-1] && j < matrix.length && i < row.length 
              matrix[i][j] = [matrix[i-1][j-1],
                     matrix[i-1][j],
                     matrix[i][j-1]].min
        else
          matrix[i][j] = 1 + [matrix[i-1][j-1],
                              matrix[i-1][j],
                              matrix[i][j-1]].min
        end
      end
    end

    puts "final output:"
    print_matrix(matrix)
    return matrix


  end

  
  def print_matrix(matrix)
    output = ""
    matrix.each do |row|
      output << '| '
      row.each do |column_of_row|
        output << "#{column_of_row.to_s}, "        
      end
      output << " |\n"
    end
    puts output + "\n\n\n\n"
  end

end

EditDistance.new('gary', 'martin').solve

