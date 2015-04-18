class Kata

  def initialize(input)
    @input = input
    @alphabet = ('a'..'z').to_a
    @d_number = @alphabet.index(input)
    @grid = (@d_number * 2) + 1
  end

  def run
    @grid.times.map do |i|
      build_row_for(i)
    end
  end

  private

  def build_row_for(index)
    if index <= @d_number
      character = @alphabet[index]
    else
      character = @alphabet[index - @d_number - 1]
    end

    character.center(@grid, '_')
  end

end
