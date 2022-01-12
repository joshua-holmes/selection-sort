def selection_sort(originalArr)
  arr = originalArr.dup
  returnedArr = []
  originalArr.each do |n|
    min = arr.min
    returnedArr.push min
    arr.delete_at(arr.index min)
  end
  returnedArr
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [-1, 2, 3, 5]"
  print "=> "
  print selection_sort([3, -1, 5, 2])

  puts

  # Don't forget to add your own!

  puts "Expecting: [-9, 0, 3, 8, 10]"
  print "=> "
  print selection_sort([8, 3, -9, 0, 10])

  # BENCHMARK HERE, you can print the average runtime
  long_input = []

  100.times { long_input << rand }

  before = Time.now
  selection_sort long_input
  after = Time.now

  my_time = after - before

  before = Time.now
  long_input.sort
  after = Time.now

  comp_time = after - before

  puts "My time: #{my_time} seconds"
  puts "Comp time: #{comp_time} seconds"

end

# Please add your pseudocode to this file
# And a written explanation of your solution


=begin 
Let's say we have an array with a length of 8
loop 8 times
    find the minimum of array in range i...8
    push that number to my new array

return new array
=end