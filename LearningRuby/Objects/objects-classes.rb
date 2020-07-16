class Square 
    def initialize(side_length) #identify the properties
        @side_length = side_length
    end

    def area #methods
        @side_length * @side_length
    end
end 

#initialize the class

square_a = Square.new(10)
puts "Square A: #{square_a.area}"

#Count Intializations of a Class to demonstrate class variables

class Square2
    def initialize
        if defined? (@@count_of_squares)
            @@count_of_squares += 1
        else
            @@count_of_squares = 1
        end
    end

    def self.count
        @@count_of_squares
    end

    def count
        puts "There is nothing to print"
    end
end

a = Square2.new
puts a.count
b = Square2.new
puts Square2.count

$adder = 2 #Intitialized a global variable which can be called anywhere in the code

class Calculate
    def initialize (num1)
        @num1 = num1
    end

    def self.Square(numx)
       @@num_def = 12
        puts @@num_def * 2
        puts "Numx: #{numx}"
        @numx = numx # Initialized as an instance variable ONLY available within the context of this class method
        puts "Numx_instance @: #{@numx}"
        @@numx = numx # Intialized as a class variable that is is accessible within the entire class
        puts "Numx_instance @@: #{@@numx}"

    end


    def add(num2)
        @num2 = num2
        puts @num1 + num2 + @@num_def + $adder
        puts "Numx: #{@@numx}" 
        
    end
end

adeline = Calculate.new(10)
puts Calculate.Square(10)

puts adeline.add(10) # expects 20 + 12 (@@numdef) + $adder = 33

#INHERITANCES 

class Person
    def initialize (name)
        @name = name
    end

    def name
        return @name
    end
end

class Doctor < Person
    def name
        "Dr. " + super #super keyword here returns the result of name in the parent class which the child class has inherited.
    end
end

doc1 = Doctor.new("Ayodele")
puts doc1.name 