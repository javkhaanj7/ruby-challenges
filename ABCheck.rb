#Using the Ruby language, have the function ABCheck(str) take the str parameter 
#being passed and return the string true if the characters a and b are separated by 
#exactly 3 places anywhere in the string at least once (ie. "lane borrowed" would result 
#in true because there is exactly three characters between a and b). Otherwise return the string false. 
#Correct Sample Outputs:
#Input = "after badly" Output = "false"
#Input = "Laura sobs" Output = "true"
#http://coderbyte.com/

def ABCheck(str)

  counter = 0
  str.each_char do |x|
    if(x == 'a' && counter + 4 < str.length && str.chars.to_a[counter + 4] == 'b')
      return true
    end
    counter += 1
  end
  return false 
         
end
