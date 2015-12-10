# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)
  i=0
  greatest = [nil,nil,nil] # To store the 3 greatest numbers so far (from largest to smallest)
  
  while i<nums.length
    if greatest[0]==nil || greatest[0]<nums[i]
      greatest[2] = greatest[1]
      greatest[1] = greatest[0]
      greatest[0] = nums[i]
    elsif greatest[1]==nil || greatest[1]<nums[i]
      greatest[2] = greatest[1]
      greatest[1] = nums[i]
    elsif greatest[2]== nil || greatest[2]<nums[i]
      greatest[2] = nums[i]
    end
    i+=1
  end
  
  return greatest[2]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)
