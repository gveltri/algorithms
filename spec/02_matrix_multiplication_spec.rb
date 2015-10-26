require_relative '../lib/matrix_multiplier'

describe "Matrix Multiplication" do
  context 'can operate on matrices' do
    
    let(:matrix_a) {
      [[0,2,3,4,6],
       [0,1,5,7,8],
       [15,7,5,4,4]]}
    let(:matrix_b) {
      [[0,0,15],
       [2,1,7],
       [3,3,5],
       [4,7,4],
       [6,8,4]]}
    let(:matrix_c) {
      [[0,2],
       [5,7]]}
    let(:matrix_d) {
      [[65,87,69],
       [93,129,92],
       [69,82,331]]
    }

    let(:multiplier) {
      MatrixMultiplier.new(matrix_a,matrix_b)
    }

    it 'will not compute an invalid set of matrices' do 
      expect(MatrixMultiplier.new(matrix_a, matrix_c).is_valid?).to eq(false)
    end

    it 'can compute the dot product' do
      expect(multiplier.compute_dot_product(matrix_b.first, matrix_b.first)).to eq(225)
    end
    
    it 'can calculate the product of two matrices' do
      expect(multiplier.solve).to eq(matrix_d)
    end

  end
end


