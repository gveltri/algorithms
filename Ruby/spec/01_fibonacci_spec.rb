require_relative '../lib/fibonacci/'

describe "Fibonacci" do
  context 'can use a memoized version of the algorithm' do
    it 'can calculate the fibonacci sequence up to 1' do
      expect(Fibonacci.new(1).solve_memoized(1)).to eq(1)
    end

    it 'can calculate the fibonacci sequence up to 100' do
      expect(Fibonacci.new(100).solve_memoized(100)).to eq(354224848179261915075)
    end

  end

  context 'can use a dynamic version of the algorithm' do
    it 'can calculate the fibonacci sequence up to 1' do
      expect(Fibonacci.new(1).solve_dynamically(1)).to eq(1)
    end

    it 'can calculate the fibonacci sequence up to 100' do
      expect(Fibonacci.new(100).solve_dynamically(100)).to eq(354224848179261915075)
    end

  end


end

