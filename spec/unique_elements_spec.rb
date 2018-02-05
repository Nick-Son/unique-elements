require_relative '../unique_elements'

RSpec.describe UniqueElements do 
  let(:tester) { UniqueElements.new }
  let(:other_test) { UniqueHash.new }

  context 'is_array?' do 
    it 'returns false if an non-array is passed in' do 
      expect(tester.is_array?({})).to eq false
    end
    it 'returns false if an empty array is passed in' do 
      expect(tester.is_array_populated?([])).to eq false
    end
    it 'returns false if compare integer to float' do 
      expect(tester.same_data_class?(1,1.0)).to eq false
    end
    it 'returns false if compare integer to string' do 
      expect(tester.same_data_class?(1,'1')).to eq false
    end
    it 'returns true if compare integer to string' do 
      expect(tester.same_data_class?('5','1')).to eq true
    end
    it 'returns true if compare x to array containing x' do 
      expect(tester.compare_number_to_array(6, [3, 5, 8, 2, 6])).to eq true
    end
    it 'returns false if compare x to array not containing x' do 
      expect(tester.compare_number_to_array(6, [3, 5, 8, 2, 7])).to eq false
    end
    it 'returns false if compare x int to array containing x float' do 
      expect(tester.compare_number_to_array(6, [3, 5, 8, 6.0, 2, 7])).to eq false
    end
    it 'returns true if each item is unique' do 
      expect(tester.is_unique?([3, 5, 8, 2, 7])).to eq true
    end
    it 'returns false if each item is not unique' do 
      expect(tester.is_unique?([3, 5, 8, 3, 2, 7])).to eq false
    end
    it 'returns true if each item is unique by class' do 
      expect(tester.is_unique?([3, 5, 8, 3.0, 2, 7])).to eq true
    end
    it 'returns true if an array that is populated and unique' do 
      expect(tester.is_a_unique_array([3, 5, 8, 3.0, 2, 7])).to eq true
    end
    it 'returns false if not a unique array ' do 
      expect(other_test.is_a_unique_array([3, 5, 8, 3, 2, 7])).to eq false
    end
    it 'returns true if unique array' do 
      expect(tester.is_a_unique_array([3, 5, 8, '3', 2, 7])).to eq true
    end
    it 'returns false if not an array' do 
      expect(tester.is_a_unique_array({})).to eq false
    end
    it 'returns false if empty array' do 
      expect(tester.is_a_unique_array([])).to eq false
    end

  end

end