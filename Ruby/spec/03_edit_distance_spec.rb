require_relative '../lib/edit_distance'

describe "Edit Distance" do

  let(:string_a) { 'geveltri' }
  let(:string_b) { 'gger1vv' }

  let(:string_c) { 'geveltri43902jfjsFF' }
  let(:string_d) { 'gger1vvFFFFFFF4329' }


  let(:editor) { EditDistance.new(string_a,string_b) }
  
  context 'can calculate the edit distance between two strings' do
    it 'can calculate the ED recursively' do
      expect(editor.solve_recursively(string_a, string_b)).to eq(6)
    end

    it 'can calculate the ED dynamically' do
      expect(editor.solve_with_table).to eq(6)
    end

    it 'can calculate two larger strings in a reasonable amount of time' do
      expect(EditDistance.new(string_c,string_d).solve_with_table).to eq(17)
    end

  end

end

