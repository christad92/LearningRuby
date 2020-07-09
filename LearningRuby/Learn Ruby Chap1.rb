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


#Creating a new class Pets and animals with inheritance using <

class Pet
    attr_accessor :name, :age, :gender, :color
end

class Dog < Pet

end

class Cat < Pet

end

class Snake < Pet

end
