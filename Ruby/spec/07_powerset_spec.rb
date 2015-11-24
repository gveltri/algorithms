require_relative '../lib/powerset.rb'


describe "powerset" do

  let (:string) {'abc'}
  let (:solution) { ["abc", "ab", "ac", "a", "bc", "b", "c", ""] }

  let (:string_2) {'abcde'}
  let (:solution_2_length) { 2**(string_2.length) }
  context 'when trying to calculate all possible results for a given string' do

    it 'cant handle a string of size 3' do
      expect(Powerset.new(string).return_power_set.uniq).to eq(solution)
    end

    it 'cant handle a string of size 5' do
      expect(Powerset.new(string_2).return_power_set.length).to eq(solution_2_length)
    end


  end
end
