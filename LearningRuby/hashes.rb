#Hashes

dictionary = {'cat' => 'feline animal', 'dog' => 'canine animal'}
puts dictionary['cat']
puts dictionary.size

dictionary.each_key { |key|  puts key}
dictionary.each_value {|value| puts value}

dictionary.each {|key, value| puts "#{key} = #{value}"}

Adeyemos = {
    'first born' => {
        "name" => "Ayodele",
        "age" => 26,
        "gender" => "Male",
        "favorite painters" => ['Monet',"Constable", "Da Vinci"]
    },
    'second born' => {
        "name" => "Modupeoluwa",
        "age" => 24,
        "gender" => "Female",
    }
}

Adeyemos['first born'].each {|key, value| puts "#{key} =  #{value}"}
Adeyemos["first born"]["favorite painters"].push(Adeyemos["first born"]["favorite painters"].join(",")) #Changing the value of an object in the hash
Adeyemos['first born'].each {|key, value| puts "#{key} =  #{value}"} 
