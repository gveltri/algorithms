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

    let(:objects_2) { [{:value => 5,
                    :size => 12
                   },
                   {:value => 3,
                    :size => 2
                   },
                   {:value => 20,
                    :size => 5
                   },
                   {:value => 100,
                    :size => 20
                   },
                   {:value => 20,
                    :size => 100
                   },
                   {:value => 5,
                    :size => 2
                   },
                   {:value => 20,
                    :size => 5
                   },
                   {:value => 20,
                    :size => 5
                   }
                  ]}

  let(:knapsack) { Knapsack.new(objects, capacity) }
  
  context 'can give back the highest possible value of things that fit' do
    it 'can calculate the value recursively' do
      expect(knapsack.solve).to eq(80)
    end

    it 'can calculate another set of objects max value recursively' do
      knapsack.objects_array = objects_2
      expect(knapsack.solve).to eq(100)
    end

    it 'can calculate for a non-even capacity' do
      knapsack.objects_array = objects_2
      knapsack.capacity = 3
      expect(knapsack.solve).to eq(5)
    end
    
    it 'can calculate the sum' do
      knapsack.objects_array = objects_2
      knapsack.capacity = 50000
      answer = 0;
      objects_2.each do |hash|
        answer += hash[:value]
      end
      expect(knapsack.solve).to eq(answer)
    end

    it 'will return 0 if nothing fits' do
      knapsack.capacity = 0
      expect(knapsack.solve).to eq(0)
    end    
  end

end

