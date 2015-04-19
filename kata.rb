class Kata

  def initialize(input)
    @input = input
    @alphabet = ('a'..'z').to_a
    @alphabet_index = @alphabet.index(input)
    @grid = (@alphabet_index * 2) + 1
  end

  def run
    @grid.times.map do |i|
      build_row_for(determine_position(i))
    end
  end

  private

  def build_row_for(position)
    character = @alphabet[position]

    if position.zero?
      character.center(@grid, '_')
    else
      row = character + spacers_for(position) + character
      row.center(@grid, '_')
    end
  end

  def spacers_for(position)
    '_' * (position + (position - 1))
  end

  def determine_position(position)
    return position if position <= @alphabet_index
    position - ((position - @alphabet_index) * 2)
  end
end
