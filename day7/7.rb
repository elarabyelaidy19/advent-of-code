input = File.readlines('input.txt').map(&:chomp)[0].split(',').map(&:to_i)


def part1(crabs)
    crabs.sort!
    i = (crabs.count / 2) - 1
    median = crabs.count.even? ? (crabs[i.floor] + crabs[i.ceil]) / 2 : crabs[i]
    fuel_sum = 0
    crabs.each do |c|
      fuel_sum += (c - median).abs
    end

    return fuel_sum
end

puts part1(input)
puts part2(input)


main