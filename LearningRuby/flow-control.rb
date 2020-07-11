age = 12
puts "You are too young to use this system" if age < 18

if age < 12 
    puts "You are too young to use this system"
else 
    puts "Hi, Welcome to this platform"
end 

fruits = "Cashew" 
if fruits == "Apple"
    puts "Green"
else
    puts "Any other colour"
end

if fruits == "Apple"
    puts "Colour is Green"
elsif fruits == "Orange"
    puts "Colour is Orange"
elsif fruits == "Cashew"
    p "Colour is Red"
else
    p "Colour is Unknown"
end


colour = ""
case fruits
when "Orange"
   colour =  "Orange"
when "Cashew"
    colour = "Red"
else 
   colour = "Unknown"    
end

puts "#{fruits} are #{colour}"
