#Using the Ruby language, have the function ArrayAdditionI(arr) take the array of numbers stored in arr 
#and return the string true if any combination of numbers in the array can be added up to equal the largest 
#number in the array, otherwise return the string false. For example: if arr contains [4, 6, 23, 10, 1, 3] 
#the output should return true because 4 + 6 + 10 + 3 = 23. The array will not be empty, will not contain 
#all the same elements, and may contain negative numbers.  
#Correct Sample Outputs:
#Input = 5,7,16,1,2 Output = "false"
#Input = 3,5,-1,8,12 Output = "true"
#http://coderbyte.com/

def ArrayAdditionI(arr)

  largestNumber = 0
  arr.each do |x|
    if(x > largestNumber)
      largestNumber = x
    end
  end
  
  arr.each_index do |x|
    sum = arr[x]
    arr.length.times do |y|
      if(arr[y] != largestNumber && arr[x] != largestNumber)
        sum = sum + arr[y]
        if(sum == largestNumber)
          return "true"
        end
      end
    end
  end  
  return "false" 
         
end
