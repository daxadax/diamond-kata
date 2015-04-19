class Kata

  def initialize(input)
    @input = input
    @alphabet = ('a'..'z').to_a
    @alphabet_index = @alphabet.index(input)
    @grid = (@alphabet_index * 2) + 1
  end

  def run
    @grid.times.map do |i|
      build_row_for(i)
    end
  end

  private

  def build_row_for(position)
    if position > @alphabet_index
      position -= (position - @alphabet_index) * 2
    end
    character = @alphabet[position]

    if position.zero?
      character.center(@grid, '_')
    else
      "#{character}_#{character}"
    end
  end

end
