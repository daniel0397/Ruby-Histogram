
class MyString
  def initialize(str)
   @str = str.upcase
  end

  def str=(str)
   @str = str
  end   
  
  def str
   @str 
  end

  def letters
   @letters =  {}
  end

  def frequency
   hash = Hash.new(0)
   str.each_char{|key| hash[key] += 1}
   @letters = hash   
  end

  def histogram
   for char in 'A'..'Z'
     print char + ':'
     for i in 1..frequency[char]
       print "*"
     end
     print "\n"
   end
  end
end
string1 = MyString.new('Hello, World!')
string1.letters
p string1
string1.histogram
