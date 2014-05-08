#Using the Ruby language, have the function DashInsert(num) insert dashes ('-') between each two odd 
#numbers in num. For example: if num is 454793 the output should be 4547-9-3. Don't count zero as an odd number. 
#Correct Sample Outputs:
#Input = 99946 Output = "9-9-946"
#Input = 56730 Output = "567-30"
#http://coderbyte.com/

def DashInsert(num)

  arr = num.to_s.split("")
  result = arr[0]
  (1 .. (arr.length - 1)).each do |x|
    if(arr[x - 1].to_i % 2 != 0 && arr[x].to_i % 2 != 0)
      result << "-"
    end
    result << arr[x]
  end
  return result 
         
end
