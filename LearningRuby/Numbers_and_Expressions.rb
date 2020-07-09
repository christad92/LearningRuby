#Basic expressions

puts 5
puts 1+2
print "1"+"b"+"c" #using pprint instead of put does not take the cursor to the next line so we use the literal "\n"
puts "\n"
puts 100-5*(2-1)

puts "__________________"

#Declaring variables

x = 10 
puts x 

y = 100 
puts y

puts (x+y)
puts x-y


#Something a bit complex 

puts x -= y #return x-y as the value of x


puts "__________________"

#Comparison Operators and Expressions

age = 10 
puts "You are too young to use this system" if age < 16

#You can also use && as a logical and operator 

age = 24
puts " You are a teenager" if age >13 && age < 20 #returns nothing

#using unless 

age = 30 
puts "You are qualified" unless age > 12 && age < 24 #returns you are qualified

#Using between

age = 18
puts "You are a teenager" if age.between?(13,19) #returns you are a teenager

puts "__________________"

#returning 0,1,-1

puts 1<=>1 #returns 0
puts 2<=>1 #returns 1
puts 1<=>2 #returns -1

#Looping Through Numbers

puts x = 1 #returns 1

puts x +=1 #returns 2

puts x += 1 #returns 3

5.times do puts "Test" end #prints "test" 5 times 
puts  " \n___________ \n "
5.times {puts "Test"} #puts Test 5 times also


#Printing numbers in series 

1.upto(5) {|x| puts x} #returns 1,2,3,4,5
10.downto(0) {|y| puts y} #returns 10,9,8,.....,2,1,0
0.step(50,5) {|z| print z} #retuns 0-50 with an interval of 5


#String Literals 
x = "Test"
y= "String"

puts x+y

puts "Success!" if x+y == "TestString" #Returns Success!

puts x = %q{Hello World}

puts x = %q/Hello World/
 
#Creating Here Documents
 
x = <<END_OF_LIST
1. Ayodele
2. Adeline
3. Ewele
END_OF_LIST
puts x #returns the list 
 