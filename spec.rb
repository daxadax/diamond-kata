require_relative 'kata'
require 'minitest/autorun'
require 'minitest/spec'

class KataSpec < Minitest::Spec
  let(:input) { '' }
  let(:result) { Kata.new(input).run }

  describe 'a' do
    let(:input) { 'a' }

    it 'returns 1 row' do
      assert_equal 1, result.size
    end

    it 'returns "a"' do
      assert_equal ["a"], result
    end
  end

  describe 'b' do
    let(:input) { 'b' }

    it 'returns 3 rows' do
      assert_equal 3, result.size
    end
  end
end
