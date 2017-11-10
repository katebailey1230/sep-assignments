def poorly_written_ruby(*arrays)
  combined_array = []

  arrays.each do |array|
    combined_array += array
  end

  sorted_array = [combined_array.delete_at(0)]

  until combined_array.length == 0
    insert_val = combined_array.shift
    i = 0
    until i == sorted_array.length || insert_val < sorted_array[i]
    i += 1
      end
      sorted_array.insert(i, insert_val)
    end

  sorted_array
end


puts poorly_written_ruby([2, 8, 9], [5, 7, 6])
