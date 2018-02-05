class UniqueElements

  def is_array?(array)
    array.is_a? Array
  end

  def is_array_populated?(array)
    array.length > 0
  end

  def same_data_class?(a,b)
    a.class == b.class
  end

  def compare_number_to_array(number, array)
    # (6, [3, 5, 8, 2, 6]) => true
    answer = false

    array.each do |item|
      if same_data_class?(number, item) && number == item 
        answer = true
      end
    end

    return answer
  end

  def is_unique?(array)
      previousItems = []
      answer = true
    
      array.each do |item|
        if compare_number_to_array(item, previousItems)
          return false
        else
          previousItems << item  
        end
      end
    return answer
  end

def is_a_unique_array(array)
  answer = false
  if is_array?(array) && is_array_populated?(array)
      answer = is_unique?(array)
  end
  return answer
end

end

class UniqueHash
  def is_a_unique_array(array)
    value_store = {}

    array.each do |item|
      return false if value_store[item] == 1

      value_store[item] = 1
    end
  end
end

class TestArray
  def index

  end

  def sort

  end

  def sort_by

  end

  def unique?

  end

  def include?

  end
end