require_relative '../lib/knapsack'

describe "Knapsack" do

  let(:objects) { [{:value => 5,
                    :size => 12
                   },
                   {:value => 3,
                    :size => 2
                   },
                   {:value => 20,
                    :size => 5
                   },
                   {:value => 0,
                    :size => 20
                   },
                   {:value => 20,
                    :size => 5
                   },
                   {:value => 1,
                    :size => 10
                   },
                   {:value => 20,
                    :size => 5
                   },
                   {:value => 20,
                    :size => 5
                   }
                  ]}
  let(:capacity) { 20 }

  let(:knapsack) { Knapsack.new(objects, capacity) }
  
  context 'can give back the highest possible value of things that fit' do
    it 'can calculate the value recursively' do
      expect(knapsack.solve).to eq(80)
    end
    
  end

end

