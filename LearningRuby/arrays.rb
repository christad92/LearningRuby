#Getting started with arrays

x = [1,2,3,4]

puts x[2] #gets the third element of the array =  3
puts "x[2] + 1 shall return #{x[2] + 1}" #returns the sum of the third element and 1 = 4
puts "x[2] += 1 shall return #{x[2] += 1}" #returns the sum of the third element and 1 as the value of the third element
print "The value of x[2] in the array has changed now. See this #{x} \n"
x << "Word" #Adds word to the array

print "#{x} \n"
puts "#{x.pop}" #Removes the last element in the array
print "#{x} \n" #Returns the updated list

print "#{x.join(',')} \n"
splitted = x.join(',')
y = []
y << splitted.split(",")
y= y[0]
print "#{y} and y has #{y.length} elements \n"

y << "This is a test".scan(/\w\w/)

print "#{y} \n"
print y.length

z = []
"This is a test".scan(/\w\w/) do |x| z << x end 
print "#{z} \n"
xx=[]
xx << "This is a test".match(/(\w+) (\w+)/) 
yy = []
yy << "This is a test".scan(/(\w+) (\w+)/)
print %Q< xx matching returns #{xx} \n>
print %Q< yy scanning returns #{yy.join(",")}\n>


#Array iteration 
##Using each vs using collect 

iter = [1,2,3,4,5]

iter.each {|element| print element.to_s + "x \n"} #returns individual
print iter.collect {|element| element + 2} #returns an array 
puts "\n"

#Looping over an array

i = 0
while (i < iter.length)
    puts "#{iter[i]} * #{i} is #{iter[i] * i}"
    i += 1
end
