class Powerset

  attr_accessor :input_string

  def initialize(string)
    @input_string = string
    @output = []
  end

  def return_power_set
    @output = []
    recursively_find_substrings('', 0)
    return @output
  end

  def recursively_find_substrings(string, current_index)

    if current_index == @input_string.length
      @output << string
      return
    end

    recursively_find_substrings( string +  @input_string[current_index], current_index + 1)
    recursively_find_substrings( string, current_index + 1)

  end

end
