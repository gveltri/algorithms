require_relative '../lib/quicksort.rb'

describe "Quicksort" do

  let (:unsorted_array_1) { [5,3,4,1,2,0] }
  let (:sorted_array_1) { [0,1,2,3,4,5] }
  
  let (:unsorted_array_2) { [0,4,7,5,4,7,8,342,8,5,2,1,5,78,5,7,9,10] }
  
  context 'the sorting algorithm' do

    it 'can sort a simple array of 5 numbers' do
      expect(Quicksort.new(unsorted_array_1).solve).to eq(sorted_array_1)
    end
    
  end
end

