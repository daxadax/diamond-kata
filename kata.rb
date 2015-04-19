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
    elsif character == @input
      character + '_' * (@grid - 2) + character
    else
      build_inner_row_for(character)
    end
  end

  def determine_position(position)
    return position if position <= @alphabet_index
    position - ((position - @alphabet_index) * 2)
  end

  def build_inner_row_for(character)
    @grid.times.map do |i|
      if @alphabet_index.even? && i.odd?
        character
      elsif @alphabet_index.odd? && i.even?
        character
      else
        '_'
      end
    end.join
  end

end
