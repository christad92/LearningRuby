=begin
This project helps to build a teext analyzer which will read in text supplied in a separate file, analyze it for various patterns and statistics, and print out the results for the
user. It’s not a 3D graphical adventure or a fancy web site, but text processing programs are the bread and butter of systems administration and most application development
=end

#Count the number of lines in the file

content = ""
text_length = 0
line_count = 0
text_length_no_spaces = 0
number_of_words = 0
number_of_words_split = ""
number_of_sentences = ""
number_of_paragraphs = ""
stopwords = %w{the a by on for of are with just but and to the my in I has some} 
useful_words = []

File.open('./text-analyzer.txt').each do |line|
    line_count += 1
    content << line 
    text_length = content.length 
    words = content.split 
    text_length_no_spaces = content.gsub(/\s+/,'').length
    number_of_words = content.scan(/\w+/).length
    number_of_words_split = content.split().length
    number_of_sentences = content.split(/\.|\?|!/).length
    number_of_paragraphs = content.split(/\n\n/).length
    useful_words = words.select {|word| !stopwords.include?(word)}
end 

puts "#{line_count} lines"
puts "#{text_length} characters"
puts "#{text_length_no_spaces} letters (excluding spaces)"
puts "Number of words by scan: #{number_of_words}; Number of words by split: #{number_of_words_split}"
puts "Number of the sentences: #{number_of_sentences}"
puts "Number of the paragraph: #{number_of_paragraphs}"
puts "Average sentences per paragraph: #{number_of_sentences/number_of_paragraphs}"
puts "Average words per sentence: #{number_of_words_split/number_of_sentences}"
puts "Count of useful funds: #{useful_words.count}"

puts "#{ARGV} is here"
