class Person
    def initialize(name)
        set_name(name)
    end

    def name
        @first_name + " " + @last_name
    end

    def set_name(name)
        first_name, last_name = name.split(/\s+/)
        set_first_name(first_name)
        set_last_name(last_name)
    end
    def set_first_name(first_name)
        @first_name = first_name
    end
    def set_last_name(last_name)
        @last_name = last_name
    end
end

newPerson = Person.new("Ayodele Adeyemo")
puts newPerson.name
newPerson.set_first_name("Oba")
puts newPerson.name
