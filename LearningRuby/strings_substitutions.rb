puts 'foobar'.sub('bar','foo') #returns foofoo

#sub only replaces one occurence. You will need to use gsub if there are more occurences to be removed. See examples below

test_line = "This is a test"

puts "sub returns #{test_line.sub('i','')}"
puts "gsub returns #{test_line.gsub('i','')}"


#regex can also be passed into the commands. see below

puts test_line.sub(/^../,"Hello")
puts test_line.sub(/..$/,"Hello")

#Iterating Strings using the .scan method
"xyz".scan(/./){|letter| puts letter}

test_line.scan(/../){|x| puts x} #iterates over every 2 characters including the whitespaces

test_line.scan(/\w\w/) {|x| puts x} #Scans to iterare over the aphlanumerics and underscores. 

"The car costs $1000 and the cat costs $10".scan(/\d+/) do |x| puts x end  #returns as many digits in a row as possible

"The car costs $1000 and the cat costs $10".scan(/\d/) do |x| puts x end #returns digits

#Text Matching
test_line2 = "The car costs $1000 and the cat costs $10"
puts test_line2
puts "String has vowels" if test_line2.match(/[aeiou]/)
puts "String contains no digits" unless test_line2.match(/[0-9]/)
puts test_line2