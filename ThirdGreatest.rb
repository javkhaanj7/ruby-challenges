#Using the Ruby language, have the function ThirdGreatest(strArr) take the array of strings stored in strArr 
#and return the third largest word within in. So for example: if strArr is ["hello", "world", "before", "all"] 
#your output should be world because "before" is 6 letters long, and "hello" and "world" are both 5, but the output 
#should be world because it appeared as the last 5 letter word in the array. If strArr was ["hello", "world", "after", "all"] 
#the output should be after because the first three words are all 5 letters long, so return the last one. The array will 
#have at least three strings and each string will only contain letters. 
#Correct Sample Outputs:
#Input = "coder","byte","code" Output = "code"
#Input = "abc","defg","z","hijk" Output = "abc"
#http://coderbyte.com/

def ThirdGreatest(strArr)

  strArr.each_index do |i|
    (strArr.length - i - 1).times do |j|
      if strArr[j].length > strArr[j + 1].length
        strArr[j], strArr[j + 1] = strArr[j + 1], strArr[j]
      end
    end
  end
  
  secondGreatest = strArr[strArr.length - 1] 
  (strArr.length - 1).downto(0) do |i|
    if(secondGreatest.length > strArr[i].length)      
      secondGreatest = strArr[i]
      break
    end
  end
  
  thirdGreatest = secondGreatest 
  (strArr.length - 3).downto(0) do |i|
    if(thirdGreatest.length == strArr[i].length)
      break
    end
    if(thirdGreatest.length > strArr[i].length)      
      thirdGreatest = strArr[i]
      break
    end
  end
  
  return thirdGreatest 
         
end
