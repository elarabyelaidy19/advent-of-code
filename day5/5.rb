# Part 1
INPUT = File.readlines('input.txt')
raw_lines = INPUT.map(&:chomp)

Line = Struct.new(:x1, :x2, :y1, :y2)

class Line
  def slope() vertical / horizontal; rescue ZeroDivisionError; Float::INFINITY end
  
  def vertical() 
    y2 <=> y1 
  end
  
  def horizontal() 
    x2 <=> x1 
  end
end

lines = raw_lines.map do |raw_line|
  x1, y1, x2, y2 = raw_line.gsub(' -> ', ',').split(',').map(&:to_i) 
  Line.new(x1, x2, y1, y2)
end

def fill_grid(lines, size)
  Array.new(size) { Array.new(size, 0) }.tap do |grid|
    lines.each do |line|
      x, y = line.x1, line.y1
      grid[y][x] += 1
      until x == line.x2 && y == line.y2
        x += line.horizontal
        y += line.vertical
        grid[y][x] += 1
      end
    end
  end
end

straight_lines = lines.select { |l| [0, Float::INFINITY].include?(l.slope) }

grid = fill_grid(straight_lines, 1000)
puts grid.flatten.count { |n| n > 1 }

# Part 2
grid = fill_grid(lines, 1000)
puts grid.flatten.count { |n| n > 1 }