=begin
Creating here documents 
=end

puts 'Adeyemos', '______', <<FAMILY_LIST , 'Baloguns', "*******"
1. Ayodele
2. Modupeoluwa
3. Omolara
4. Oluwafemi 
5. Samuel

FAMILY_LIST

=begin
Trying Classes and Methods  
=end

class FamilyAdeyemo
    def greet
        puts "How are you"
    end
end

person = FamilyAdeyemo.new
name = "Ayodele"
puts name
puts person.greet