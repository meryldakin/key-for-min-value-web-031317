# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.empty?
    return nil
  else
    values_arr = name_hash.collect do |key, value|
      value
    end
    lowest_value = -10,000
    if values_arr[0] > values_arr[1]
      lowest_value = values_arr[0]
    else
      lowest_value = values_arr[1]
    end
    values_arr.each do |value|
      if value < lowest_value
        lowest_value = value
      end
    end
    name_hash.select do |key, value|
      if value == lowest_value
        return key
      end
    end
  end
end
