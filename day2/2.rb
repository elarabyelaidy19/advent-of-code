data = File.readlines('input.txt').map { |line| line.split } 

d_x = 0 
d_y = 0 

data.each do |dir, n| 
    #puts n
    case dir 
        when 'forward' then d_x += n.to_i
        when 'up'  then d_y -= n.to_i 
        when 'down' then d_y += n.to_i 
        else raise " I do not no where to go"
    end  
end 

puts d_x * d_y


# Part 2


d_x = 0 
d_y = 0 
aim = 0
data.each do |dir, n| 
    case dir 
    when 'forward' then d_x += n.to_i and d_y += n.to_i * aim
    when 'up' then aim -= n.to_i 
    when 'down' then aim += n.to_i 
    else 
        raise " I do not no where to go"
    end   
    
end 

puts d_x * d_y