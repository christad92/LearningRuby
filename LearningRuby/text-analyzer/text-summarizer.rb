text = %q{
    Ruby is a great programming language. It is object oriented
    and has many groovy features. Some people don't like it, but that's
    not our problem! It's easy to learn. It's great. To learn more about Ruby,
    visit the official Ruby web site today.
    }
    
    #The goal here is to extract a summary of the text above

    sentences = text.gsub(/\s+|\n\n/," ").strip.split(/\.|\!|\?/)
    sentences_sorted = sentences.sort_by {|sentence| sentence.length}
    sentence_length = [] 
    sentences_sorted.collect {|sentence| sentence_length << sentence.length}
    sent_avg = sentence_length.sum/sentence_length.length
    incre = rand(1..13)

    #Exploring the statistics of the text

    puts "Average: #{sentence_length.sum/sentence_length.length}"
    puts "Min: #{sentence_length.max}"
    puts "Max: #{sentence_length.min}"

    sentences_select = sentences.select {|oro| oro.length > sent_avg+ incre}
    summary = sentences_select.select {|oro| oro.match(/is|are/)}
    puts "Increase by: #{incre}"
    puts summary.join(".")