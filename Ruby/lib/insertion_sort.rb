require 'pry'
class InsertionSort

  def initialize(array)
    @array = array
  end


  def sort
    (1..@array.length-1).each do |i|
      insert(@array[i],i)
    end
    @array
  end

  def insert(e,i)
    while @array[i-1] > e && i > 0
      i-=1
      @array[i+1]=@array[i]
    end 
    @array[i] = e
  end
  
end
