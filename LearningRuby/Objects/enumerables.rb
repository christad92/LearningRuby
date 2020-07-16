my_array = %W{10 56 92 3 49 588 18}

max  = 0

my_array.each do |num| 
    num = num.to_i
    max = num if num > max
end 
puts max

for i in my_array
    maxN = 0
    i = i.to_i 
    if i > maxN then maxN = i end 
    next i 
    puts maxN
end 

#Using Code Blocks 

class AllVowels 
    #include Enumerable
    VOWELS = %w{a e i o u}

    def listem
    VOWELS.each {|v| yield v}
    end
end 

x = AllVowels.new
x.listem {|a| puts a}