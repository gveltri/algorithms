require_relative '../lib/quicksort.rb'
require_relative '../lib/AVL_tree.rb'


describe "AVL trees" do

  let (:seed_array) {[0,1,7,9,10,12,15,25]}
  context 'when initializing a binary tree' do

    it 'has a root node with the correct value' do
      expect(AVLTree.new(seed_array).root_node.value).to eq(10)
    end

    it 'has a root node with the correct value' do
      expect(AVLTree.new(seed_array).root_node.right.value).to eq(15)
    end


  end
end
