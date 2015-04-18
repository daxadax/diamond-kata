class Kata

  def initialize(input)
    @input = input
    @alphabet = ('a'..'z').to_a
    @d_number = @alphabet.index(input)
  end

  def run
    total_lines = (@d_number * 2) + 1

    diamond = total_lines.times.map do |i|
      @input
    end

    diamond.each do |row|
      puts row + "\n"
    end
  end

end
