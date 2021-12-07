input  = File.read('input.txt').chomp 
fish_timer = input.split(',').map(&:to_i) 

timers = Array.new(9, 0)  

fish_timer.each do |timer|  
    timers[timer] += 1  

end 


def simulate_step(timers) 

    zeroes = timers[0]
    timers.each_index do |i|
      next if i == 0
      timers[i - 1] = timers[i]
    end
    timers[-1] = zeroes
    timers[6] += zeroes
end



80.times { simulate_step(timers) }
puts timers.sum


