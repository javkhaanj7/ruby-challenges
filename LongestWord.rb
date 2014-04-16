#Using the Ruby language, have the function LongestWord(sen) take the sen parameter 
#being passed and return the largest word in the string. If there are two or more 
#words that are the same length, return the first word from the string with that length. 
#Ignore punctuation and assume sen will not be empty. 
#Correct Sample Outputs:
#Input = "fun&!! time" Output = "time"
#Input = "I love dogs" Output = "love"
#http://coderbyte.com/

def LongestWord(sen)
  
  # code goes here
  sen = sen.gsub(/[^\s0-9A-Za-z]/, '')
  arr = sen.split(' ')  
  
  longest = ''
  arr.each do |word|
    if(word.length > longest.length)
      longest = word
    end
  end
  return longest
         
end
