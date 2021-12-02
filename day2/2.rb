data = File.readlines('input.txt').map { |line| line.split } 

d_x = 0 
d_y = 0 

data.each do |dir, n| 
    case dir 
        when 'forword' d_x += n.to_i
        when 'up' d_y  += n.to_i 
        when 'down' d_y -= n.to_i 
        else raise 'I do not no where to go' 
    end  
end 

puts d_x * d_y
