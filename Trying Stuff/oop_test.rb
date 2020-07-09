3.times {puts "Hi"}

3.times {|x| puts "#{x+1} Looping Hi"}

#Simple Function 

def simpleFunction
    yield
    yield
end 

simpleFunction {puts "Ayodele is a Genius"}


def simpleFunction2
    yield "Ayodele"
    yield "Modupeoluwa"
end 

simpleFunction2 {|x| puts "Hi, #{x}"}


puts "I will count down to 100"
100.times {|number| puts "this is " #{number}