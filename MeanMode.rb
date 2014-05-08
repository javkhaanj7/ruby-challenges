#Using the Ruby language, have the function MeanMode(arr) take the array of numbers stored in arr and return 1 
#if the mode equals the mean, 0 if they don't equal each other (ie. [5, 3, 3, 3, 1] should return 1 because 
#the mode (3) equals the mean (3)). The array will not be empty, will only contain positive integers, and will not 
#contain more than one mode. 
#Correct Sample Outputs:
#Input = 1, 2,3 Output = 0
#Input = 4, 4, 4, 6, 2 Output = 1
#http://coderbyte.com/

def MeanMode(arr)

  sum = 0
  nums = {}
  counted = []
  arr.each_index do |i|
    sum += arr[i]
    ((i + 1) .. (arr.length - 1)).each do |j|
      unless counted.include?(arr[i])
        if(arr[i] == arr[j])
          if(nums[arr[i]])
            nums[arr[i]] = nums[arr[i]] + 1
          elsif
            nums[arr[i]] = 2
          end
        end
      end
    end
    counted << arr[i]
  end
  mean = sum / arr.length

  max = 0
  mode = 0
  nums.each do |k, v|
    if(v > max)
      max = v
      mode = k
    end
  end
  
  return mean == mode ? 1 : 0 
         
end
