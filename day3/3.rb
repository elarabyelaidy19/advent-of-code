data = File.readlines('input.txt').map(&:chomp) 
len = data[0].length 
counts = [0] * len

data.each do |num|  
    num.each_char.with_index { |c, i| counts[i] += 1 if c == '1' }  
end 


def to_decimal(bn) 
    bn.length.times.reduce(0) do |acc, idx| 
        acc + bn[-idx - 1].to_i * 2 ** idx  
    end 
end  

most_common = counts.map { |cnt| cnt >= data.length / 2 ? 1 : 0 }  
least_common = most_common.map { |bit| bit == 0 ? 1 : 0 } 
puts to_decimal(most_common) * to_decimal(least_common) 






