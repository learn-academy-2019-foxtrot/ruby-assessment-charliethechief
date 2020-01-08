# ASSESSMENT 4: INTRO TO RUBY
# Coding practical questions

# 1. Use TWO different Ruby methods to return a new array with all the numbers multiplied by 3. Expected output: [3, 6, 18, 27, 9, 63]

myArray = [1, 2, 6, 9, 3, 21]

#(1)
myArray.each do |value|
  puts value * 3
end

#(2)
arr = myArray.map { |string| string * 3 } #!!!!
puts arr

# 2. Create a method that takes in a sentence and returns a new sentence with the first letter of each word capitalized. Expected output = "Hello There, How Are You?"

sentence = "hello there, how are you?"
def caps (string)
   arr = string.split(" ")
   new_arr = []
   arr.each {|value| new_arr << value.capitalize }
   p new_arr.join(" ")
 end
 caps(sentence)

# 3. Create a method that takes in a string and returns a new string with all the vowels removed. Expected output = " hv n vwls"

no_vowels = "I have no vowels"
def vowel_out (string)
   array = string.downcase.split("")
   new_array = []
   array.each {|value|
   if value != 'a'&& value != 'e'&& value != 'i'&& value != 'o'&& value != 'u'
     new_array << value
   end
   }
   p new_array.join("")
 end

 vowel_out(no_vowels)

# 4. Look at this horrible Ruby code. Fix it to be good Ruby code.

class Example
   def initialize
     @day = "Pick a day."
   end
   def set_day (new_day)
     @day = new_day
   end
   def say_hi
     if @day == "Friday"
        "TGIF!"
     elsif @day == "Monday"
        "Its monday again"
     else
        "another day"
     end
   end
 end

 example_test = Example.new
  example_test.set_day("Friday")
  puts example_test.say_hi

 # 5a. Create a class called Animal that initializes with a color. Create a method in the class called legs that returns 4.

class Animal
   def initialize color = 'Black', legs = 4
     @color = color
     @legs = legs
   end
   def to_s
     "The animals fur color is #{@color} and it has #{@legs} legs"
   end
 end

 animal = Animal.new
  puts animal

# 5b. Create a new instance of an Animal with a brown color. Return how the number of legs for the animal object.
brown = Animal.new 'brown', 4
puts brown
