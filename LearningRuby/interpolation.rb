#Interpolation
=begin
Interpolation allows us to embed expressions and logics directly into strings. it helps in understanding what we are doing
=end

x = 10 ; y = 11

puts "#{x} + #{y} = #{x+y}"

animal = "cat"
puts "The #{animal} is on the farm"


#Using everything we have learned : classes, objects, methods and inheritance with interpolation

class Animal
    attr_accessor :name, :type, :age, :gender
end

class Pet < Animal
    def Introduce(x,a,b,c,d)
        x = Pet.new
        x.name = a
        x.type = b
        x.age = c
        x.gender = d
        puts %Q<#{a} is a Pet and is a type #{b}, aged #{c}. I love it because it is a #{d}.>
    end
end
peee = Pet.new
puts peee.Introduce("peace","Peace","Dog",12,"Male")
puts peee.class #Return the class of peee which is a Pet
puts %Q<Peee is a class which belongs to the class #{peee.class} which belong to a class #{peee.class.superclass}.>
