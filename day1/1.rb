# part 1
input = File.readlines('input.txt').map(&:to_i) 
puts input.each_cons(2).count { |a, b| a < b } 


# part 2 

puts input.each_cons(4).count { |a, _, _, b| a < b } 
