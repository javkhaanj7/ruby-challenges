#Using the Ruby language, have the function CountingMinutesI(str) take the str parameter being passed 
#which will be two times (each properly formatted with a colon and am or pm) separated by a hyphen and 
#return the total number of minutes between the two times. The time will be in a 12 hour clock format. 
#For example: if str is 9:00am-10:00am then the output should be 60. If str is 1:00pm-11:00am the output should be 1320.  
#Correct Sample Outputs:
#Input = "12:30pm-12:00am" Output = 690
#Input = "1:23am-1:08am" Output = 1425
#http://coderbyte.com/

def CountingMinutesI(str)

  from = str.split("-")[0]
  to = str.split("-")[1]
  fromMinute = from.gsub("am", "").gsub("pm", "")
  fromMinute = fromMinute.split(":")[0].to_i * 60 + fromMinute.split(":")[1].to_i
  toMinute = to.gsub("am", "").gsub("pm", "")
  toMinute = toMinute.split(":")[0].to_i * 60 + toMinute.split(":")[1].to_i
  
  result = 0
  multiple = 12
  if(fromMinute > toMinute)
    if (from.include?("am") && to.include?("am")) || (from.include?("pm") && to.include?("pm")) 
      multiple = 24
    end
    result = multiple * 60 - (fromMinute - toMinute)
  elsif
    if (from.include?("am") && to.include?("am")) || (from.include?("pm") && to.include?("pm")) 
      result = toMinute - fromMinute
    elsif
      result = multiple * 60 - (fromMinute - toMinute)
    end
  end
  return result
         
end
