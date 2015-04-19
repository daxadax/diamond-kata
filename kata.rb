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

  def build_row_for(index)
    index -= (@alphabet_index + 1) if index > @alphabet_index
    character = @alphabet[index]

    if index.zero?
      character.center(@grid, '_')
    else
      "#{character}_#{character}"
    end
  end

end
