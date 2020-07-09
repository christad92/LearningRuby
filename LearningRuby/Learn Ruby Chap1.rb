#Defining a Class Person

class Person
    attr_accessor :name, :age, :gender    
end

#Creating Instances of the Class Person 

person_instance = Person.new
person_instance.name = "Christine"
person_instance.age = 52
person_instance.gender = "Male"

puts person_instance
puts person_instance.name
puts person_instance.age
puts person_instance.gender


class Pet
    attr_accessor :name, :age, :gender, :color
end
#Creating a new class Pets and animals with inheritance using <
#Create a method for an object of class dog
class Dog < Pet 
    def bark 
        puts "WOOOF"
        # Now dog can bark
    end
    # Making dog bark ntimes
    def bark_n(i)
        i.times do 
            puts "Woof"
        end
    end
end

peace = Dog.new

peace.name = "Peace"
peace.gender = "Male"
peace.age = 3
peace.color = "Brown"

puts peace.age
peace.bark

peace.bark_n(3)

class Cat < Pet

end

class Snake < Pet

end

=begin
 Ruby is quite an interesting language. 
 Everything is object oriented
 Things to remember:
 1. Classess and entities and they can have attributes e.g Pet as used above
 2. Objects belong to classes defined. So a Dog is a pet and it inherits the attributes of a pet using "<". Also objects can be defined as classes using the "class" keyword
 3. Methods are actions that an object can perform for example, a dog can bark. 
=end
