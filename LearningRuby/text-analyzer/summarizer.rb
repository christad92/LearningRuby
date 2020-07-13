#Summarize any document passsed into the document


inputFile = File.readlines(ARGV[0])
readLines = inputFile.join

sentences = readLines.gsub(/\s+|--/," ").strip.split(/\.|\!|\?/)
sentences_sorted = sentences.sort_by {|sentence| sentence.length}
sentence_length = []
sentences_sorted.collect {|sentence| sentence_length << sentence.length}
avg_length  = sentence_length.sum/sentence_length.length

puts <<SUMMARY_LIST
"Max Length: #{sentence_length.max}"
"Min Length: #{sentence_length.min}"
"Average length: #{sentence_length.sum/sentence_length.length}"

________________

SUMMARY_LIST

useful_sentence = sentences_sorted.select {|sentence| sentence.length <  (avg_length +rand(1..20)) && sentence.length >  (avg_length - rand(1..20)) }

useful_sentence = useful_sentence.select{|sentence| sentence.match(/is|are|were|was/)}
#useful_sentence.each {|us| puts "#{us} \n \n" }

Summary = useful_sentence.join(".").strip
puts Summary.length
result = Summary.length > 5 ? Summary : "Something went wrong. Try again" 
puts result

#To run this do "ruby summarizer.rb <filename>"