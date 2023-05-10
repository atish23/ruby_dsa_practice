class BinarySearch

  def search_index(arr, target)
    start_index = 0
    end_index = arr.length-1
    counter = 1
    while start_index <= end_index
      counter +=1;
      mid_index = start_index + (end_index - start_index) / 2

      if target == arr[mid_index]
        puts "Number of times loop iterates is #{counter}"
        return mid_index
      elsif target >= arr[mid_index]
        start_index = mid_index + 1
      else
        end_index = mid_index - 1
      end
    end
    'No value found in array' 
    puts "Number of times loop iterates is #{counter}"
  end
end

b = BinarySearch.new
arr = (1..1000).to_a
target = 70
p b.search_index(arr,target)