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

    it 'returns "_a_" as the first row' do
      assert_equal '_a_', result.first
    end

    it 'returns "_a_" as the last row' do
      assert_equal '_a_', result.last
    end

    it 'returns "b_b" as the middle row' do
      assert_equal 'b_b', result[1]
    end
  end

  describe 'c' do
    let(:input) { 'c' }

    it 'returns 5 rows' do
      assert_equal 5, result.size
    end
  end
end
