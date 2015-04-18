require_relative 'kata'
require 'minitest/autorun'
require 'minitest/spec'

class KataSpec < Minitest::Spec

  let(:input) { '' }
  let(:result) { Kata.new(input).run }

  it 'runs' do
    result
  end

end
