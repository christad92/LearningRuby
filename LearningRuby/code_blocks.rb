def each_vowel(&code_block)
    %w{a e i o u}.each {|vowel| code_block.call(vowel)}
end

each_vowel {|vowel| print "vowel"+"11, "}

#Option 2
def each_vowel
    %w{a e i o u}.each {|vowel| yield vowel}
end

each_vowel {|vowel| print "vowel"+"12, "}

('A'..'Z').to_a.each{|l| print "#{l}, "}